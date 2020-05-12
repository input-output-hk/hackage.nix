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
      identifier = { name = "elm-init"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "development@justusadam.com";
      author = "justusadam";
      homepage = "";
      url = "";
      synopsis = "Set up basic structure for an elm project";
      description = "Initialize a new empty elm project with some basic scaffolding according to 'https://github.com/evancz/elm-architecture-tutorial'.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "elm-init" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."system-fileio" or (errorHandler.buildDepError "system-fileio"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."json" or (errorHandler.buildDepError "json"))
            ];
          buildable = true;
          };
        };
      };
    }