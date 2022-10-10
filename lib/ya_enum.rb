# frozen_string_literal: true

require "ya_enum/version"
require "forwardable"

# Implements an enum
module YaEnum
  class Enum
    class << self
      extend ::Forwardable

      def inherited(subclass)
        subclass.instance_variable_set(:@enum_store, @enum_store.clone)
        super
      end

      # Define an entry in the enum
      def define(key, value)
        @enum_store = {} unless enum_store
        enum_store[key] = value
      end

      # Get the enum value
      def get(key, raises: true)
        return unless enum_store
        raises ? enum_store.fetch(key) : enum_store.fetch(key, nil)
      end

      # Get multiple keys at once
      def get_multiple(*keys, raises: true)
        keys.map { |key| get(key, raises: raises) }
      end

      # Check if value is used in enum
      def include?(value)
        enum_store&.has_value?(value)
      end

      # Delegate enumerable methods to underlying hash
      def_delegators :@enum_store,
        :key,
        :key?,
        :keys,
        :values,
        :each,
        :map,
        :select,
        :to_a,
        :inject,
        :reject,
        :to_h

      # Convert a string to a enum key
      def keyify(name)
        name.gsub(%r{[\-\s/\\]}, "_").downcase.to_sym
      end

      private

      attr_reader :enum_store
    end
  end
end
