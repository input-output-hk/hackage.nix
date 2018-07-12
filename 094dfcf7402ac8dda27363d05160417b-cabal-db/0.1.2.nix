{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cabal-db";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/cabal-db";
        url = "";
        synopsis = "cabal-db";
        description = "cabal-db";
        buildType = "Simple";
      };
      components = {
        exes = {
          "cabal-db" = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.Cabal
              hsPkgs.tar
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.bytestring
              hsPkgs.utf8-string
              hsPkgs.pretty
              hsPkgs.process
            ];
          };
        };
      };
    }