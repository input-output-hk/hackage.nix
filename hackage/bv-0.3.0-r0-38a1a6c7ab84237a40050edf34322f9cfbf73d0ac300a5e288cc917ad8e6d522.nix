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
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "bv"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2012-2014 Iago Abal";
      maintainer = "Iago Abal <mail@iagoabal.eu>";
      author = "Iago Abal <mail@iagoabal.eu>";
      homepage = "http://bitbucket.org/iago/bv-haskell";
      url = "";
      synopsis = "Bit-vector arithmetic library";
      description = "Bit-vectors implemented as a wrapper over integers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "bv-tester" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-th" or (errorHandler.buildDepError "test-framework-th"))
            ];
          buildable = if flags.test then true else false;
          };
        };
      };
    }