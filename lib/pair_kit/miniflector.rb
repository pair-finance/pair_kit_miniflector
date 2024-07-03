module PairKit
  module Miniflector
    class << self
      def camel_case(str)
        split(str).map.with_index { |x, i| i.positive? ? x.capitalize : x }.join
      end

      def snake_case(str)
        split(str).join('_')
      end

      def pascal_case(str)
        split(str).map(&:capitalize).join
      end

      def kebab_case(str)
        split(str).join('-')
      end

      def screaming_snake_case(str)
        split(str).map(&:upcase).join('_')
      end

      def screaming_kebab_case(str)
        split(str).map(&:upcase).join('-')
      end

      SPLIT_RE = /(?=[A-Z][a-z]+)|[_\- ]/.freeze

      def split(str)
        str.to_s.split(SPLIT_RE).map(&:downcase).map { |x| x.empty? ? nil : x }.compact
      end
    end
  end
end
