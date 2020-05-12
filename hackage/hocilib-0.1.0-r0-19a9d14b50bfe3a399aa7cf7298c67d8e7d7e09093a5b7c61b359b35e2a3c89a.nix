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
      identifier = { name = "hocilib"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Thierry Bourrillon\n(c) 2016 FPInsight, Eurl.";
      maintainer = "Thierry Bourrillon <thierry.bourrillon@fpinsight.com>";
      author = "Thierry Bourrillon <thierry.bourrillon@fpinsight.com>";
      homepage = "https://github.com/fpinsight/hocilib";
      url = "";
      synopsis = "FFI binding to OCILIB";
      description = "A low-level client library for the Oracle database, implemented as\nbindings to the C OCILIB API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        libs = [ (pkgs."ocilib" or (errorHandler.sysDepError "ocilib")) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hocilib" or (errorHandler.buildDepError "hocilib"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          libs = [ (pkgs."ocilib" or (errorHandler.sysDepError "ocilib")) ];
          buildable = true;
          };
        };
      };
    }