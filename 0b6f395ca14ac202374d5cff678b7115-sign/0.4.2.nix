{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      lattices14 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sign";
          version = "0.4.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "masahiro.sakai@gmail.com";
        author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
        homepage = "";
        url = "";
        synopsis = "Arithmetic over signs and sets of signs";
        description = "Arithmetic over signs (i.e. -, 0, +) and sets of signs";
        buildType = "Simple";
      };
      components = {
        sign = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.hashable
          ] ++ (if _flags.lattices14
            then [
              hsPkgs.lattices
              hsPkgs.universe-base
            ]
            else [ hsPkgs.lattices ]);
        };
        tests = {
          TestSign = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.lattices
              hsPkgs.sign
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ] ++ pkgs.lib.optional _flags.lattices14 hsPkgs.universe-base;
          };
        };
      };
    }