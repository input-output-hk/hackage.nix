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
      identifier = { name = "libmdbx"; version = "0.1.0.4"; };
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
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
          ];
        buildable = true;
        };
      exes = {
        "libmdbx-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."libmdbx" or (errorHandler.buildDepError "libmdbx"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."store" or (errorHandler.buildDepError "store"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      tests = {
        "libmdbx-hs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."libmdbx" or (errorHandler.buildDepError "libmdbx"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }