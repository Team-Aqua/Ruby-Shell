module StaticRegex
  TIME_ARG_ANY = /-t(.*?)/

  TIME_ARG_INTEGER = /-[t](\d+)/

  FILENAME_ARG_ANY = /-f('(.*?)'|"(.*?)")/

  FILENAME_ARG_VALID = /-f('|")([a-zA-Z0-9_-]+\.[a-z0-9]+)('|")/

  VALID_FILENAME = /^([a-zA-Z0-9_-]+\.[a-z0-9]+)$/

  MESSAGE_ARG_QUOTES_CONTAIN_ANY = /-m('(.*?)'|"(.*?)")/

  WHITESPACE_OMIT_BRACKET_WHITESPACE_CONTENT = /\s+(?=([^"]*"[^"]*")*[^"]*$)/

  FIND_QUOTES = /(')|(")/

  CONTENT_BETWEEN_QUOTES = /('|")(.*?)('|")/

  WATCH_MODE_ARG = /-m(alter|create|destroy)($|-)/

  FILE_NAME_ARG = /-f('|")([a-zA-Z0-9_-]+\.[a-z0-9]+)('|")/

  ALL_WHITESPACE = /\s+/

  def self.matcher(pattern, arg)
    if arg.match(pattern) == nil
      return false
    end
    return true
  end
end