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
      identifier = { name = "pcgen"; version = "2.0.1"; };
      license = "Apache-2.0";
      copyright = "2017 Daniel Gee";
      maintainer = "zefria@gmail.com";
      author = "Daniel \"Lokathor\" Gee";
      homepage = "https://github.com/Lokathor/pcgen-hs";
      url = "";
      synopsis = "A fast, pseudorandom number generator.";
      description = "A fast pseudorandom number generator, as presented by M.E. O'Neill on\nhttp://www.pcg-random.org, See that site for information on the particulars\nof the technique used. This particular implementation uses two Word64 of\ninternal data and produces a Word32 of output per step. On 64-bit machines\nit's two to three times as fast as StdGen and uses the same amount of space.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
        buildable = true;
        };
      tests = {
        "pcgen-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pcgen" or (errorHandler.buildDepError "pcgen"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "pcgen-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pcgen" or (errorHandler.buildDepError "pcgen"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }