{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tries"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Various trie implementations in Haskell";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-trie)
          (hsPkgs.semigroups)
          (hsPkgs.rose-trees)
          (hsPkgs.composition)
          (hsPkgs.composition-extra)
          (hsPkgs.keys)
          (hsPkgs.sets)
          (hsPkgs.mtl)
          (hsPkgs.criterion)
          ];
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tries)
            (hsPkgs.criterion)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-trie)
            (hsPkgs.semigroups)
            (hsPkgs.rose-trees)
            (hsPkgs.composition)
            (hsPkgs.composition-extra)
            (hsPkgs.keys)
            (hsPkgs.sets)
            (hsPkgs.mtl)
            ];
          };
        };
      };
    }