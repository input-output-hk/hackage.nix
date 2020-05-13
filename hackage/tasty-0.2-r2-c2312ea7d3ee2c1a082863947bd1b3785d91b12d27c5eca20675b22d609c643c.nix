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
    flags = { colors = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "tasty"; version = "0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "roma@ro-che.info";
      author = "Roman Cheplyaka";
      homepage = "";
      url = "";
      synopsis = "Modern and extensible testing framework";
      description = "See <http://documentup.com/feuerbach/tasty>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ] ++ (pkgs.lib).optional (flags.colors) (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"));
        buildable = true;
        };
      };
    }