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
    flags = { ucd2haskell = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "unicode-data"; version = "0.2.0"; };
      license = "Apache-2.0";
      copyright = "2020 Composewell Technologies and Contributors";
      maintainer = "streamly@composewell.com";
      author = "Composewell Technologies and Contributors";
      homepage = "http://github.com/composewell/unicode-data";
      url = "";
      synopsis = "Access Unicode character database";
      description = "@unicode-data@ provides Haskell APIs to efficiently access the Unicode\ncharacter database. Performance is the primary goal in the design of\nthis package.\n\nThe Haskell data structures are generated programmatically from the\nUnicode character database (UCD) files. The latest Unicode version\nsupported by this library is 14.0.0.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "ucd2haskell" = {
          depends = (pkgs.lib).optionals (flags.ucd2haskell) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."streamly" or (errorHandler.buildDepError "streamly"))
            (hsPkgs."getopt-generics" or (errorHandler.buildDepError "getopt-generics"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = if flags.ucd2haskell then true else false;
          };
        };
      };
    }