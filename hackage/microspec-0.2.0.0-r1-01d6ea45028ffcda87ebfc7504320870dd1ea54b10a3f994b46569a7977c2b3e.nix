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
      identifier = { name = "microspec"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Murphy";
      author = "Tom Murphy";
      homepage = "";
      url = "";
      synopsis = "Tiny QuickCheck test library with minimal dependencies";
      description = "A tiny (1 module, <500 lines) property-based (and unit) testing library with minimal dependencies.\n\nDon't add a bunch of transitive dependencies just to test your code!\n\nInstead of reinventing the wheel (<https://xkcd.com/927>), we use a\nRSpec/HSpec-like API and run tests with QuickCheck.\n\n> import Test.Microspec\n>\n> main :: IO ()\n> main = microspec $ do\n>    describe \"replicate\" $ do\n>       it \"doubles with 2\" $\n>          replicate 2 'x' === \"xx\"\n>       it \"creates a list of the right size\" $\n>          \\(Positive n) -> length (replicate n 'x') === n\n>\n>    describe \"reverse\" $ do\n>       it \"reverse . reverse === id\" $ \\l ->\n>          reverse (reverse l) === (l :: [Int])\n>\n>    describe \"tail\" $\n>       it \"length is -1\" $ \\(NonEmpty l) ->\n>          length (tail l :: [Int]) === length l - 1\n>\n>    describe \"solve the halting problem\" $\n>       pending";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
        ];
        buildable = true;
      };
    };
  }