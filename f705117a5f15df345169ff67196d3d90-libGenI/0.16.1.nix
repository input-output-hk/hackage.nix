{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      splitbase = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "libGenI";
          version = "0.16.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "eric.kow@loria.fr";
        author = "Carlos Areces and Eric Kow";
        homepage = "http://trac.loria.fr/~geni";
        url = "";
        synopsis = "A natural language generator (specifically, an FB-LTAG surface realiser)";
        description = "A natural language generator (specifically, an FB-LTAG surface realiser)";
        buildType = "Simple";
      };
      components = {
        libGenI = {
          depends  = if _flags.splitbase
            then [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.process
              hsPkgs.parsec
              hsPkgs.QuickCheck
              hsPkgs.HUnit
            ]
            else [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.QuickCheck
              hsPkgs.HUnit
            ];
        };
      };
    }