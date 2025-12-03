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
      identifier = { name = "integer-roots"; version = "1.0.4.0"; };
      license = "MIT";
      copyright = "(c) 2011 Daniel Fischer, 2016-2021 Andrew Lelechenko.";
      maintainer = "Andrew Lelechenko andrew dot lelechenko at gmail dot com";
      author = "Daniel Fischer, Andrew Lelechenko";
      homepage = "https://github.com/Bodigrim/integer-roots";
      url = "";
      synopsis = "Integer roots and perfect powers";
      description = "Calculating integer roots and testing perfect powers of arbitrary precision. Originally part of <https://hackage.haskell.org/package/arithmoi arithmoi> package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ (if compiler.isGhc && compiler.version.lt "9.0"
          then [
            (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          ]
          else [
            (hsPkgs."ghc-bignum" or (errorHandler.buildDepError "ghc-bignum"))
          ]);
        buildable = true;
      };
      tests = {
        "integer-roots-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."integer-roots" or (errorHandler.buildDepError "integer-roots"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-smallcheck" or (errorHandler.buildDepError "tasty-smallcheck"))
          ];
          buildable = true;
        };
      };
    };
  }