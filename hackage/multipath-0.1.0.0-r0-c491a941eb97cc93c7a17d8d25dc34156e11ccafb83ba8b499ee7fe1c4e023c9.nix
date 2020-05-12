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
      identifier = { name = "multipath"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "flegmer@gmail.com";
      author = "Jan Rydzewski";
      homepage = "https://github.com/SupraSummus/haskell-multipath";
      url = "";
      synopsis = "Parser and builder for unix-path-like objects.";
      description = "Parser and builder for unix-path-like objects used in multiformats (https://github.com/multiformats)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }