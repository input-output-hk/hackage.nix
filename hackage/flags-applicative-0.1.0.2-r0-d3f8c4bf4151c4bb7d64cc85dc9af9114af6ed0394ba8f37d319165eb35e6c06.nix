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
      identifier = { name = "flags-applicative"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2019 Matthieu Monsch";
      maintainer = "mtth@apache.org";
      author = "Matthieu Monsch";
      homepage = "https://github.com/mtth/flags-applicative";
      url = "";
      synopsis = "Applicative flag parsing";
      description = "https://github.com/mtth/flags-applicative";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "flags-applicative-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."flags-applicative" or (errorHandler.buildDepError "flags-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }