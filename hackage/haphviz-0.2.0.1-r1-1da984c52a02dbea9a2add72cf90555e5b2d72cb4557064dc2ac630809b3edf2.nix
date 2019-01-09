{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haphviz"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "Tom Sydney Kerckhove 2015";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "";
      url = "";
      synopsis = "Graphviz code generation with Haskell";
      description = "There are multiple ways to describe this package:\n\n* \"A Turing-complete encoding system for graphviz\"\n\n* \"A graph visualization code generation EDSL\"\n\n* \"An easy way to draw graphs\"\n\nIf any combinators are still missing, feel free to shoot the maintainer an email!";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.text) (hsPkgs.mtl) ]; };
      tests = {
        "haphviz-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haphviz)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.checkers)
            (hsPkgs.quickcheck-text)
            (hsPkgs.text)
            ];
          };
        };
      };
    }