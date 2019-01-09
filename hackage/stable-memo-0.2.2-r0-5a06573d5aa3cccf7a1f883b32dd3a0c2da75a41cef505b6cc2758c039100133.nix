{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "stable-memo"; version = "0.2.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Jake McArthur <Jake.McArthur@gmail.com>";
      author = "Jake McArthur <Jake.McArthur@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Memoization based on argument identity";
      description = "Whereas most memo combinators memoize based on equality, stable-memo\ndoes it based on whether the exact same argument has been passed to\nthe function before (that is, is the same argument in memory).\n\n* stable-memo only evaluates keys to WHNF.\n\n* This can be more suitable for recursive functions over graphs with\ncycles.\n\n* stable-memo doesn't retain the keys it has seen so far, which\nallows them to be garbage collected if they will no longer be\nused. Finalizers are put in place to remove the corresponding\nentries from the memo table if this happens.\n\n* \"Data.StableMemo.Weak\" provides an alternative set of combinators\nthat also avoid retaining the results of the function, only\nreusing results if they have not yet been garbage collected.\n\n* There is no type class constraint on the function's argument.\n\nstable-memo will not work for arguments which happen to have the\nsame value but are not the same heap object. This rules out many\ncandidates for memoization, such as the most common example, the\nnaive Fibonacci implementation whose domain is machine Ints; it can\nstill be made to work for some domains, though, such as the lazy\nnaturals.\n\n> data Nat = Succ Nat | Zero\n>\n> fib :: Nat -> Integer\n> fib = memo fib'\n>   where fib' Zero                = 0\n>         fib' (Succ Zero)         = 1\n>         fib' (Succ n1@(Succ n2)) = fib n1 + fib n2\n\nBelow is an implementation of map that preserves sharing of the\nspine for cyclic lists. It should even be safe to use this on\narbitrarily long, acyclic lists since as long as the garbage\ncollector is chasing you, the size of the memo table should stay\nunder control, too.\n\n> map :: (a -> b) -> [a] -> [b]\n> map f = go\n>   where go = memo map'\n>         map' []     = []\n>         map' (x:xs) = f x : go xs\n\nThis library is largely based on the implementation of memo found in\n\\\"Stretching the storage manager: weak pointers and stable names in\nHaskell\\\", from Simon Peyton Jones, Simon Marlow, and Conal Elliott\n(<http://community.haskell.org/~simonmar/papers/weak.pdf>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.hashtables)
          (hsPkgs.tagged)
          (hsPkgs.ghc-prim)
          ];
        };
      };
    }