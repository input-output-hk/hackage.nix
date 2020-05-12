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
      identifier = { name = "jenkinsPlugins2nix"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Mateusz Kowalczyk";
      maintainer = "fuuzetsu@fuuzetsu.com";
      author = "Mateusz Kowalczyk";
      homepage = "https://github.com/Fuuzetsu/jenkinsPlugins2nix#readme";
      url = "";
      synopsis = "Generate nix for Jenkins plugins.";
      description = "Generate nix for Jenkins plugins.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."hnix" or (errorHandler.buildDepError "hnix"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
          ];
        buildable = true;
        };
      exes = {
        "jenkinsPlugins2nix" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
            (hsPkgs."jenkinsPlugins2nix" or (errorHandler.buildDepError "jenkinsPlugins2nix"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "jenkinsPlugins2nix-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."jenkinsPlugins2nix" or (errorHandler.buildDepError "jenkinsPlugins2nix"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }