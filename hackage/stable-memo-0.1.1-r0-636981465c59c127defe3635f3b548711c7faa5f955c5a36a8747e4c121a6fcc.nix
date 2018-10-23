{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "stable-memo";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Jake McArthur <Jake.McArthur@gmail.com>";
      author = "Jake McArthur <Jake.McArthur@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Memoization based on argument identity";
      description = "Whereas most memo combinators memoize based on equality, stable-memo\ndoes it based on whether the exact same argument has been passed to\nthe function before (that is, is the same argument in memory).\n\n* This can be more suitable for recursive functions over graphs with\ncycles.\n\n* stable-memo doesn't retain the keys it has seen so far, which\nallows them to be garbage collected if they will no longer be\nused. Finalizers are put in place to remove the corresponding\nentries from the memo table if this happens.\n\n* \"Data.StableMemo.Weak\" provides an alternative set of combinators\nthat also avoid retaining the results of the function, only\nreusing results if they have not yet been garbage collected.\n\n* There is no type class constraint on the function's argument.\n\nstable-memo will not work for arguments which happen to have the\nsame value but are not the same heap object. This rules out many\ncandidates for memoization, such as the most common example, the\nnaive Fibonacci implementation whose domain is strict Ints; it can\nstill be made to work for some domains, though, such as the lazy\nnaturals.\n\n> data Nat = Succ Nat | Zero\n>\n> fib :: Nat -> Integer\n> fib = memo fib'\n>   where fib' Zero                = 0\n>         fib' (Succ Zero)         = 1\n>         fib' (Succ n1@(Succ n2)) = fib n1 + fib n2\n\nThis implementation is largely based on the one found in\n\\\"Stretching the storage manager: weak pointers and stable names in\nHaskell\\\", from Simon Peyton Jones, Simon Marlow, and Conal Elliott\n(<http://community.haskell.org/~simonmar/papers/weak.pdf>).";
      buildType = "Simple";
    };
    components = {
      "stable-memo" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hashtables)
          (hsPkgs.tagged)
        ];
      };
    };
  }