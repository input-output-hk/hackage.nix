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
      specVersion = "2.2";
      identifier = { name = "hikchr"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Adrian Sieber";
      maintainer = "mail@adriansieber.com";
      author = "Adrian Sieber";
      homepage = "https://github.com/ad-si/Hikchr#readme";
      url = "";
      synopsis = "Haskell wrapper for Pikchr, a PIC-like markup language for diagrams.";
      description = "Please see the README on GitHub at <https://github.com/ad-si/Hikchr#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
      exes = {
        "hikchr" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hikchr" or (errorHandler.buildDepError "hikchr"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "hikchr-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hikchr" or (errorHandler.buildDepError "hikchr"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }