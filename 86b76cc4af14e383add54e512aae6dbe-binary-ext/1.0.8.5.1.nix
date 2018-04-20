{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "binary-ext";
          version = "1.0.8.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Warlock <internalmike@gmail.com>";
        author = "Warlock <internalmike@gmail.com>";
        homepage = "https://github.com/A1-Triard/binary-ext";
        url = "";
        synopsis = "An alternate with typed errors for Data.Binary.Get monad from 'binary' library.";
        description = "An alternate with typed errors for Data.Binary.Get monad from 'binary' library.";
        buildType = "Simple";
      };
      components = {
        binary-ext = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.array
            hsPkgs.binary
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
        };
        tests = {
          qc = {
            depends  = [
              hsPkgs.base
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.random
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
              hsPkgs.array
              hsPkgs.containers
            ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
          };
          read-write-file = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.Cabal
              hsPkgs.binary
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.HUnit
              hsPkgs.array
              hsPkgs.containers
            ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.ghc-prim;
          };
        };
      };
    }