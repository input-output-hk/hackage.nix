{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "binary-search"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Takayuki Muranushi <muranushi@gmail.com>";
      author = "Ross Paterson <ross@soi.city.ac.uk>, Takayuki Muranushi <muranushi@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Binary and exponential searches";
      description = "__Introduction__\n\nThis package provides varieties of binary search functions.\nc.f.  \"Numeric.Search\" for the examples.\n\nThese search function can search for pure and monadic predicates, of type:\n\n> pred :: Eq b => a -> b\n> pred :: (Eq b, Monad m) => a -> m b\n\nThe predicates must satisfy that the domain range for any codomain value\nis continuous; that is, @∀x≦y≦z. pred x == pred z ⇒ pred y == pred x@ .\n\nFor example, we can address the problem of finding the boundary\nof an upward-closed set of integers, using a combination\nof exponential and binary searches.\n\nVariants are provided\nfor searching within bounded and unbounded intervals of\nboth 'Integer' and bounded integral types.\n\nThe package was created by Ross Paterson, and extended\nby Takayuki Muranushi, to be used together with SMT solvers.\n\n__The Module Structure__\n\n*  \"Numeric.Search\" provides the generic search combinator, to search for pure and monadic predicates.\n*  \"Numeric.Search.Bounded\" ,  \"Numeric.Search.Integer\" ,  \"Numeric.Search.Range\" provides the various specialized searchers, which means less number of function arguments, and easier to use.\n\n<<https://travis-ci.org/nushio3/binary-search.svg?branch=master>>";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.containers) ]; };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.doctest)
            ];
          };
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.binary-search)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }