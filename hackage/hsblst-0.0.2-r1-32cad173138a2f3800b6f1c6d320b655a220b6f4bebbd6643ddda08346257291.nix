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
      specVersion = "1.12";
      identifier = { name = "hsblst"; version = "0.0.2"; };
      license = "MPL-2.0";
      copyright = "2022 Serokell <https://serokell.io>";
      maintainer = "Serokell <hi@serokell.io>";
      author = "Serokell <hi@serokell.io>";
      homepage = "https://github.com/serokell/hsblst#readme";
      url = "";
      synopsis = "Haskell bindings to BLST";
      description = "HsBLST is low-level Haskell bindings and a high-level interface to [BLST](https://github.com/supranational/blst) -- a multilingual BLS12-381 signature library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
      tests = {
        "hsblst-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hex-text" or (errorHandler.buildDepError "hex-text"))
            (hsPkgs."hsblst" or (errorHandler.buildDepError "hsblst"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.tasty-discover.components.exes.tasty-discover or (pkgs.pkgsBuildBuild.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
          ];
          buildable = true;
        };
      };
    };
  }