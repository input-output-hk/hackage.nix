{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10.0";
        identifier = {
          name = "data-bword";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
        homepage = "https://github.com/mvv/data-bword";
        url = "";
        synopsis = "Extra operations on binary words of fixed length";
        description = "This package provides extra (vs. 'Data.Bits') operations on binary words of\nfixed length.";
        buildType = "Simple";
      };
      components = {
        data-bword = {
          depends  = [
            hsPkgs.base
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.5") hsPkgs.ghc-prim;
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.data-bword
            ];
          };
        };
      };
    }