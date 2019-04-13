# frozen_string_literal: true

# abbr / https://github.com/jasoncomes/Abbr-Liquid-Filter
# Converts abbreviations into words, and words into abbreviations. These abbreviations need to be added to the _config.yml file for specific site usage.
# {{ value | abbr }}

module AbbrFilter
  def abbr(input)
    # Return if empty
    return if input.nil? || input.empty?

    # Abbreviations
    abbreviations = @context.registers[:site].config['abbreviations']

    # No abbreviations setup
    return if abbreviations.nil? || abbreviations.empty?

    # Return if Key Exists
    return abbreviations[input] if abbreviations.key? input

    # Invert Hash
    abbreviations = abbreviations.invert
    return abbreviations[input] if abbreviations.key? input
  end
end

Liquid::Template.register_filter(AbbrFilter)
