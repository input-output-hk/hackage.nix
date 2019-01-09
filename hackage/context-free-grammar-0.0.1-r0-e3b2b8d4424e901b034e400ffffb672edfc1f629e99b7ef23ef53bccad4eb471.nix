{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "context-free-grammar"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Eric Nedervold";
      maintainer = "Eric Nedervold<nedervoldsoftware@gmail.com>";
      author = "Eric Nedervold<nedervoldsoftware@gmail.com>";
      homepage = "http://github.com/nedervold/context-free-grammar";
      url = "";
      synopsis = "Basic algorithms on context-free grammars";
      description = "Basic algorithms on context-free grammars:\n\n* augmenting a grammar\n\n* calculating nullability\n\n* calculating reachability\n\n* calculating productivity\n\n* calculating first sets\n\n* calculating follow sets\n\n* calculating predict sets\n\nYou may define your context-free grammar textually using 'parse'\nor with the quasiquoter 'bnf' (both in \"Data.Cfg.Bnf\"), or you may\nuse any data structure you like after making it an instance of\n'Cfg' (found in \"Data.Cfg.Cfg\").\n\nTesting is very thin in this version; basically just\nsanity-checking.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.control-monad-omega)
          (hsPkgs.dlist)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.template-haskell)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.context-free-grammar)
            (hsPkgs.HUnit)
            (hsPkgs.pretty)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-properties)
            (hsPkgs.template-haskell)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            ];
          };
        };
      };
    }