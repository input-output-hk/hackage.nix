{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "runmemo";
        version = "1.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Dan Burton 2012";
      maintainer = "danburton.email@gmail.com";
      author = "Dan Burton";
      homepage = "https://github.com/DanBurton/runmemo";
      url = "";
      synopsis = "A simple memoization helper library";
      description = "This library encourages you to do memoization\nin three separate steps:\n\n(1) Create a memoizable function\n\n(2) Create or select an appropriate memoizer\n\n(3) Run the memoizer on the memoizable function\n\nLet's start with the first.\nWhen you create a memoizable function,\nyou should use the @self@ convention,\nwhich is that the first input to the function is @self@,\nand all recursive calls are replaced with @self@.\nOne common convention that goes well with the @self@ convention\nis using a helper function @go@, like so:\n\n@\nfib :: Memoizable (Integer -> Integer)\nfib self = go\n\\  where go 0 = 1\n\\        go 1 = 1\n\\        go n = self (n-1) + self (n-2)\n@\n\nNow for the second. For this example,\nwe need a Memoizer that can handle an @Integer@ input,\nand an @Integer@ output. @Data.MemoCombinators@ provides\n@integral@, which handles any @Integral@ input, and\nany output. @Data.MemoUgly@ provides @memo@,\nwhich can memoize any function @a -> b@, given an @Ord@ instance\nfor @a@.\n\nThird, let's run our memoizers!\nSince we have decoupled the definition of the memoized function\nfrom its actual memoization, we can create multiple\nmemoized versions of the same function if we so desire.\n\n@\nimport qualified Data.MemoUgly as Ugly\nimport qualified Data.MemoCombinators as MC\n\nfibUgly :: Integer -> Integer\nfibUgly = runMemo Ugly.memo fib\n\nfibMC :: Integer -> Integer\nfibMC = runMemo MC.integral fib\n@\n\nYou could easily do the same with @Data.MemoTrie.memo@,\n@Data.Function.Memoize.memoize@, etc.\n\nUsing this technique, you can create local memoized functions\nwhose memo tables are garbage collected as soon as\nthey are no longer needed.";
      buildType = "Simple";
    };
    components = {
      "runmemo" = {};
      tests = {
        "test-race" = {
          depends  = [
            (hsPkgs.data-memocombinators)
            (hsPkgs.base)
            (hsPkgs.time)
          ];
        };
      };
    };
  }