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
      identifier = { name = "scientific"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk";
      homepage = "https://github.com/basvandijk/scientific";
      url = "";
      synopsis = "Arbitrary-precision floating-point numbers represented using scientific notation";
      description = "A @Scientific@ number is an arbitrary-precision floating-point number\nrepresented using scientific notation.\n\nA scientific number with 'coefficient' @c@ and\n'base10Exponent' @e@ corresponds to the\n'Fractional' number: @'fromInteger' c * 10 '^^' e@\n\nIts primary use-case is to serve as the target of\nparsing floating point numbers. Since the textual\nrepresentation of floating point numbers use\nscientific notation they can be efficiently\nparsed to a @Scientific@ number.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
        buildable = true;
        };
      tests = {
        "test-scientific" = {
          depends = [
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-scientific" = {
          depends = [
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }