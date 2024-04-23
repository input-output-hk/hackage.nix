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
      identifier = { name = "units"; version = "2.4.1.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Richard Eisenberg <rae@richarde.dev>";
      author = "Richard Eisenberg <rae@richarde.dev>, Takayuki Muranushi <muranushi@gmail.com>";
      homepage = "https://github.com/goldfirere/units";
      url = "";
      synopsis = "A domain-specific type system for dimensional analysis";
      description = "The units package provides a mechanism for compile-time\ndimensional analysis in Haskell programs. It defines an embedded\ntype system based on units-of-measure. The units defined are fully\nextensible, and need not relate to physical properties.\nThe package supports defining multiple inter-convertible units,\nsuch as Meter and Foot. When extracting a number from a\ndimensioned quantity, the desired unit must be specified, and the\nvalue is converted into that unit.\nIf you are looking for specific systems of units (such as SI),\nplease see the @units-defs@ package.\nTests for this package are in a companion package @units-test@,\navailable from this package's source repository.\nThe Haddock documentation is insufficient for using the units\npackage. Please see the README file, available from the package\nhome page.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = if compiler.isGhc && compiler.version.ge "9.0"
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."th-desugar" or (errorHandler.buildDepError "th-desugar"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."singletons-th" or (errorHandler.buildDepError "singletons-th"))
            (hsPkgs."singletons-base" or (errorHandler.buildDepError "singletons-base"))
            (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."multimap" or (errorHandler.buildDepError "multimap"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."units-parser" or (errorHandler.buildDepError "units-parser"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."th-desugar" or (errorHandler.buildDepError "th-desugar"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
            (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."multimap" or (errorHandler.buildDepError "multimap"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."units-parser" or (errorHandler.buildDepError "units-parser"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
      };
    };
  }