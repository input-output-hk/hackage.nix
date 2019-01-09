{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "range-set-list"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/range-set-list#readme";
      url = "";
      synopsis = "Memory efficient sets with continuous ranges of elements.";
      description = "Memory efficient sets with continuous ranges of elements. List based implementation. Interface mimics 'Data.Set' interface where possible.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.semigroups)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.semigroups)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.containers)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.range-set-list)
            ];
          };
        };
      };
    }