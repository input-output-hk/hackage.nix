{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "Decimal"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Paul Johnson, 2008";
      maintainer = "paul@cogito.org.uk";
      author = "Paul Johnson";
      homepage = "";
      url = "";
      synopsis = "Decimal numbers with variable precision";
      description = "A decimal number has an integer mantissa and a negative\nexponent.  The exponent can be interpreted as the number\nof decimal places in the value.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.QuickCheck) (hsPkgs.HUnit) ];
        };
      };
    }