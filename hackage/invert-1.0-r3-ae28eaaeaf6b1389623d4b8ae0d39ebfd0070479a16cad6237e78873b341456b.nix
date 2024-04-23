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
      specVersion = "2.0";
      identifier = { name = "invert"; version = "1.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/invert";
      url = "";
      synopsis = "Automatically generate a function’s inverse";
      description = "This library deals with computing a function’s inverse.\nThis is, of course, not possible in general, so the\napplicability of this library comes with some caveats:\n\n* The function’s domain must be enumerable, and\npreferably rather small. We provide a few suggestions\nand utilities for how to enumerate the domain.\n* The function’s codomain must belong to the @Eq@ class.\nAn @Ord@ or @Hashable@ instance is also nice, to\naccommodate a data structure for efficient lookups.\n* The functions for inverting injections, surjections,\nand bijections require some care to use correctly,\nbecause the library does not verify these properties.\n\nThe main purpose of this library is to provide documentation\nand convenience. It does not contain a great quantity of code,\nso a user hesitant to incur a dependency on the package might\nwell choose only to read and borrow its techniques.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "billing-codes-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."invert" or (errorHandler.buildDepError "invert"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."invert" or (errorHandler.buildDepError "invert"))
          ];
          buildable = true;
        };
      };
    };
  }