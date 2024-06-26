{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "xdcc"; version = "1.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "git@jangerlinger.de";
      author = "Jan Gerlinger";
      homepage = "https://github.com/JanGe/xdcc";
      url = "";
      synopsis = "A wget-like utility for retrieving files from XDCC bots on\nIRC";
      description = "XDCC (eXtended DCC) is a protocol used by IRC bots to make\nfiles available for transfer. This utility can be used to\nretrieve such files.\n\nSee <https://de.wikipedia.org/wiki/XDCC> for\nmore details.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "xdcc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ascii-progress" or (errorHandler.buildDepError "ascii-progress"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."concurrent-extra" or (errorHandler.buildDepError "concurrent-extra"))
            (hsPkgs."concurrent-output" or (errorHandler.buildDepError "concurrent-output"))
            (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
            (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
            (hsPkgs."irc-client" or (errorHandler.buildDepError "irc-client"))
            (hsPkgs."irc-conduit" or (errorHandler.buildDepError "irc-conduit"))
            (hsPkgs."irc-ctcp" or (errorHandler.buildDepError "irc-ctcp"))
            (hsPkgs."irc-dcc" or (errorHandler.buildDepError "irc-dcc"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-format" or (errorHandler.buildDepError "text-format"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."unix-compat" or (errorHandler.buildDepError "unix-compat"))
          ];
          buildable = true;
        };
      };
    };
  }