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
      identifier = { name = "libmdbx"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2021 Francisco Vallarino";
      maintainer = "fjvallarino@gmail.com";
      author = "Francisco Vallarino";
      homepage = "https://github.com/fjvallarino/libmdbx-hs#readme";
      url = "";
      synopsis = "Bindings for libmdbx, an embedded key/value store";
      description = "Haskell bindings for [libmdbx](https://github.com/erthink/libmdbx).\n\nSee documentation in the main module or check the\n<https://github.com/fjvallarino/libmdbx-hs#readme README>\non GitHub.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."store" or (errorHandler.buildDepError "store"))
          (hsPkgs."store-core" or (errorHandler.buildDepError "store-core"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
      exes = {
        "libmdbx-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."libmdbx" or (errorHandler.buildDepError "libmdbx"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."store" or (errorHandler.buildDepError "store"))
            (hsPkgs."store-core" or (errorHandler.buildDepError "store-core"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "libmdbx-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."libmdbx" or (errorHandler.buildDepError "libmdbx"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."store" or (errorHandler.buildDepError "store"))
            (hsPkgs."store-core" or (errorHandler.buildDepError "store-core"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }