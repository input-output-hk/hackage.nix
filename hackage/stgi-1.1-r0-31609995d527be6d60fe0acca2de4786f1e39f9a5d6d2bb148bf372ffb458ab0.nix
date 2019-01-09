{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { doctest = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "stgi"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "David Luposchainsky <dluposchainsky (λ) gmail (dot) com>";
      maintainer = "David Luposchainsky <dluposchainsky (λ) gmail (dot) com>";
      author = "David Luposchainsky <dluposchainsky (λ) gmail (dot) com>";
      homepage = "https://github.com/quchen/stgi#readme";
      url = "";
      synopsis = "Educational implementation of the STG (Spineless Tagless\nG-machine)";
      description = "STGi is a visual STG implementation to help understand\nHaskell's execution model.\n\nIt does this by guiding through the running of a program,\nshowing stack and heap, and giving explanations of the\napplied transition rules.\n\nHere is what an intermediate state looks like:\n\n<<http://i.imgur.com/ouPwfgW.png>>\n\nFor further information, see README.md.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.prettyprinter)
          (hsPkgs.prettyprinter-ansi-terminal)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.parsers)
          (hsPkgs.semigroups)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.th-lift)
          (hsPkgs.transformers)
          (hsPkgs.trifecta)
          ];
        };
      exes = {
        "stgi-exe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.stgi)
            (hsPkgs.ansi-terminal)
            (hsPkgs.semigroups)
            (hsPkgs.text)
            ];
          };
        };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.stgi)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.prettyprinter)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.semigroups)
            (hsPkgs.tasty)
            (hsPkgs.tasty-html)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty-rerun)
            (hsPkgs.tasty-smallcheck)
            (hsPkgs.smallcheck)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            ];
          };
        "doctest" = { depends = [ (hsPkgs.base) (hsPkgs.doctest) ]; };
        };
      };
    }