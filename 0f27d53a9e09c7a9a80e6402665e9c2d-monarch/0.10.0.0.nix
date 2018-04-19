{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      develop = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "monarch";
          version = "0.10.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Noriyuki OHKAWA <n.ohkawa@gmail.com>";
        author = "Noriyuki OHKAWA <n.ohkawa@gmail.com>";
        homepage = "https://github.com/notogawa/monarch";
        url = "";
        synopsis = "Monadic interface for TokyoTyrant.";
        description = "This package provides simple monadic interface for TokyoTyrant.";
        buildType = "Simple";
      };
      components = {
        monarch = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.transformers
            hsPkgs.network
            hsPkgs.pool-conduit
            hsPkgs.monad-control
            hsPkgs.lifted-base
            hsPkgs.transformers-base
            hsPkgs.containers
            hsPkgs.stm
          ];
        };
        tests = {
          specs = {
            depends  = [
              hsPkgs.base
              hsPkgs.monarch
              hsPkgs.bytestring
              hsPkgs.transformers
              hsPkgs.hspec
            ];
          };
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
        benchmarks = {
          benchmark = {
            depends  = [
              hsPkgs.base
              hsPkgs.monarch
              hsPkgs.tokyotyrant-haskell
              hsPkgs.bytestring
              hsPkgs.criterion
            ];
          };
        };
      };
    }