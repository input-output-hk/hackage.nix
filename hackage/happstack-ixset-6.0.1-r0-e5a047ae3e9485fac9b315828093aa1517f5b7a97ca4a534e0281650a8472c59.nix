{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base4 = true; tests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "happstack-ixset"; version = "6.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Happstack team <happs@googlegroups.com>";
      author = "Happstack team, HAppS LLC";
      homepage = "http://happstack.com";
      url = "";
      synopsis = "Efficient relational queries on Haskell sets.";
      description = "Just pick which parts of your data structures you want indexed\nusing an easy to use template-haskell function. Spare yourself the\nneed to write, run, and maintain code that marshalls your data\nto/from an external relational database just for efficient\nqueries. happstack-ixset relies on generics and TH to spare you\nthe boilerplate normally required for such tasks.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs.containers)
          (hsPkgs.happstack-data)
          (hsPkgs.happstack-util)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          ] ++ (if flags.base4
          then [ (hsPkgs.base) (hsPkgs.syb) ]
          else [ (hsPkgs.base) ])) ++ [
          (hsPkgs.syb-with-class)
          ]) ++ (pkgs.lib).optionals (flags.tests) [
          (hsPkgs.QuickCheck)
          (hsPkgs.HUnit)
          ];
        };
      exes = {
        "happstack-ixset-tests" = {
          depends = (pkgs.lib).optionals (flags.tests) [
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            ];
          };
        };
      };
    }