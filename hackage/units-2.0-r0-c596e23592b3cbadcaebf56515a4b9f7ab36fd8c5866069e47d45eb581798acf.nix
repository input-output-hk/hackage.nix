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
      identifier = { name = "units"; version = "2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Richard Eisenberg <eir@cis.upenn.edu>, Takayuki Muranushi <muranushi@gmail.com>";
      author = "Richard Eisenberg <eir@cis.upenn.edu>";
      homepage = "http://www.cis.upenn.edu/~eir/packages/units";
      url = "";
      synopsis = "A domain-specific type system for dimensional analysis";
      description = "The units package provides a mechanism for compile-time\ndimensional analysis in Haskell programs. It defines an embedded\ntype system based on units-of-measure. The units defined are fully\nextensible, and need not relate to physical properties.\nThe package supports defining multiple inter-convertible units,\nsuch as Meter and Foot. When extracting a number from a\ndimensioned quantity, the desired unit must be specified, and the\nvalue is converted into that unit.\nIf you are looking for specific systems of units (such as SI),\nplease see the `units-defs` package.\nThe Haddock documentation is insufficient for using the units\npackage. Please see the README file, available from the package\nhome page.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
        ];
        buildable = true;
      };
      tests = {
        "travel" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."units" or (errorHandler.buildDepError "units"))
          ];
          buildable = true;
        };
      };
    };
  }