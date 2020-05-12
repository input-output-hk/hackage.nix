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
      identifier = { name = "HsHTSLib"; version = "1.9.0"; };
      license = "MIT";
      copyright = "(c) 2016-2019 Kai Zhang";
      maintainer = "kai@kzhang.org";
      author = "Kai Zhang";
      homepage = "";
      url = "";
      synopsis = "Bindings to htslib.";
      description = "This package provides bindings to htslib, a library\nfor processing high throughput DNA sequencing data.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-lexing" or (errorHandler.buildDepError "bytestring-lexing"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          ];
        libs = [
          (pkgs."pthread" or (errorHandler.sysDepError "pthread"))
          (pkgs."z" or (errorHandler.sysDepError "z"))
          (pkgs."curl" or (errorHandler.sysDepError "curl"))
          (pkgs."bz2" or (errorHandler.sysDepError "bz2"))
          (pkgs."lzma" or (errorHandler.sysDepError "lzma"))
          (pkgs."crypto" or (errorHandler.sysDepError "crypto"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HsHTSLib" or (errorHandler.buildDepError "HsHTSLib"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }