{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "protocol-buffers";
          version = "2.1.11";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2008-2015 Christopher Edward Kuklewicz";
        maintainer = "Kostiantyn Rybnikov <k-bx@k-bx.com>";
        author = "Christopher Edward Kuklewicz";
        homepage = "https://github.com/k-bx/protocol-buffers";
        url = "http://hackage.haskell.org/package/protocol-buffers";
        synopsis = "Parse Google Protocol Buffer specifications";
        description = "Parse proto files and generate Haskell code.";
        buildType = "Simple";
      };
      components = {
        protocol-buffers = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.utf8-string
            hsPkgs.syb
          ];
        };
      };
    }