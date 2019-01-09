{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { optimized = false; quiet = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "easytest"; version = "0.1.1"; };
      license = "MIT";
      copyright = "Copyright (C) 2017-2018 Joel Burget, Copyright (C) 2016 Paul Chiusano and contributors";
      maintainer = "Joel Burget <joelburget@gmail.com>";
      author = "Joel Burget, Paul Chiusano";
      homepage = "https://github.com/joelburget/easytest";
      url = "";
      synopsis = "Simple, expressive testing library";
      description = "EasyTest is a simple testing toolkit, meant to replace most uses of QuickCheck, SmallCheck, HUnit, and frameworks like Tasty, etc. Here's an example usage:\n\n> module Main where\n>\n> import EasyTest\n> import Control.Applicative\n> import Control.Monad\n>\n> suite :: Test ()\n> suite = tests\n>   [ scope \"addition.ex1\" \$ expect (1 + 1 == 2)\n>   , scope \"addition.ex2\" \$ expect (2 + 3 == 5)\n>   , scope \"list.reversal\" . fork \$ do\n>       -- generate lists from size 0 to 10, of Ints in (0,43)\n>       -- shorthand: listsOf [0..10] (int' 0 43)\n>       ns <- [0..10] `forM` \\n -> replicateM n (int' 0 43)\n>       ns `forM_` \\ns -> expect (reverse (reverse ns) == ns)\n>   -- equivalent to `scope \"addition.ex3\"`\n>   , scope \"addition\" . scope \"ex3\" \$ expect (3 + 3 == 6)\n>   , scope \"always passes\" \$ do\n>       note \"I'm running this test, even though it always passes!\"\n>       ok -- like `pure ()`, but records a success result\n>   , scope \"failing test\" \$ crash \"oh noes!!\" ]\n>\n> -- NB: `run suite` would run all tests, but we only run\n> -- tests whose scopes are prefixed by \"addition\"\n> main = runOnly \"addition\" suite\n\nThis generates the output:\n\n> Randomness seed for this run is 5104092164859451056\n> Raw test output to follow ...\n> ------------------------------------------------------------\n> OK addition.ex1\n> OK addition.ex2\n> OK addition.ex3\n> ------------------------------------------------------------\n> ✅  3 tests passed, no failures! 👍 🎉\nThe idea here is to write tests with ordinary Haskell code, with control flow explicit and under programmer control.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.stm)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.call-stack)
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.semigroups);
        };
      tests = { "tests" = { depends = [ (hsPkgs.base) (hsPkgs.easytest) ]; }; };
      };
    }