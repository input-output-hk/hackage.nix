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
      specVersion = "1.10.0";
      identifier = { name = "PrimitiveArray-Pretty"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Christian Hoener zu Siederdissen, 2016";
      maintainer = "choener@bioinf.uni-leipzig.de";
      author = "Christian Hoener zu Siederdissen, 2016";
      homepage = "https://github.com/choener/PrimitiveArray-Pretty";
      url = "";
      synopsis = "Pretty-printing for primitive arrays";
      description = "<http://www.bioinf.uni-leipzig.de/Software/gADP/ generalized Algebraic Dynamic Programming>\n\nA Pretty-printer for Primitive Arrays.\n\nThe idea is not so much to provide pretty-printing for single\narrays, but rather to allow for simple prettyfication of\ntypical array data. In particular we want to have simplified\npretty-printing of Inside/Outside combinations of arrays.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."diagrams" or (errorHandler.buildDepError "diagrams"))
          (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-svg" or (errorHandler.buildDepError "diagrams-svg"))
          (hsPkgs."diagrams-postscript" or (errorHandler.buildDepError "diagrams-postscript"))
          (hsPkgs."log-domain" or (errorHandler.buildDepError "log-domain"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
        buildable = true;
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."PrimitiveArray-Pretty" or (errorHandler.buildDepError "PrimitiveArray-Pretty"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-th" or (errorHandler.buildDepError "test-framework-th"))
            ];
          buildable = true;
          };
        };
      };
    }