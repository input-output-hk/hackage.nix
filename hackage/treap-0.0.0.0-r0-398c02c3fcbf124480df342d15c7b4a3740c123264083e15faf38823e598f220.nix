{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "treap"; version = "0.0.0.0"; };
      license = "MPL-2.0";
      copyright = "2019 Dmitrii Kovanikov";
      maintainer = "kovanikov@gmail.com";
      author = "Dmitrii Kovanikov";
      homepage = "https://github.com/chshersh/treap";
      url = "";
      synopsis = "Efficient implementation of the implicit treap data structure";
      description = "Efficient implementation of the implicit treap data structure.\nUse this data structure if you want dynamic arrays with fast operations on segments.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.mersenne-random-pure64)
          ];
        };
      tests = {
        "treap-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.treap)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            ];
          };
        "treap-doctest" = {
          depends = [ (hsPkgs.base) (hsPkgs.doctest) (hsPkgs.Glob) ];
          };
        };
      };
    }