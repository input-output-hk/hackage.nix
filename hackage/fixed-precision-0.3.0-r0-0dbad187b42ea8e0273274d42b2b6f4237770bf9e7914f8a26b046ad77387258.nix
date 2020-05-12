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
      specVersion = "1.6";
      identifier = { name = "fixed-precision"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ekmett@gmail.com";
      author = "Edward Kmett";
      homepage = "http://github.com/ekmett/fixed-precision";
      url = "";
      synopsis = "Fixed Precision Arithmetic";
      description = "Numeric instances for MPFR that use the \\\"Implicit Configurations\\\" from\n<http://www.cs.rutgers.edu/~ccshan/prepose/prepose.pdf>\nto choose a 'Rounding' and 'Precision'. For those that do not want to\nuse reflection, explicit instances are provided for common precisions\nand for the built-in rounding modes.\n\n> sin pi :: Fixed Down Double\n> fixed Near 256 (sin pi)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))
          (hsPkgs."hmpfr" or (errorHandler.buildDepError "hmpfr"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }