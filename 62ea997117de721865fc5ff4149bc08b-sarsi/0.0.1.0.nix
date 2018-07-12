{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "sarsi";
          version = "0.0.1.0";
        };
        license = "Apache-2.0";
        copyright = "";
        maintainer = "alois.cochard@gmail.com";
        author = "Alois Cochard";
        homepage = "http://github.com/aloiscochard/sarsi";
        url = "";
        synopsis = "A universal quickfix toolkit and his protocol.";
        description = "Usage overview can be found in the <http://github.com/aloiscochard/sarsi#sarsi README>.";
        buildType = "Simple";
      };
      components = {
        "sarsi" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.cryptonite
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.machines
            hsPkgs.machines-binary
            hsPkgs.machines-process
            hsPkgs.machines-io
            hsPkgs.msgpack
            hsPkgs.network
            hsPkgs.process
            hsPkgs.text
            hsPkgs.vector
          ];
        };
        exes = {
          "sarsi" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.sarsi
            ];
          };
          "sarsi-hs" = {
            depends  = [
              hsPkgs.base
              hsPkgs.sarsi
              hsPkgs.machines
              hsPkgs.machines-io
              hsPkgs.machines-process
              hsPkgs.process
              hsPkgs.text
              hsPkgs.fsnotify
            ];
          };
          "sarsi-nvim" = {
            depends  = [
              hsPkgs.base
              hsPkgs.sarsi
              hsPkgs.machines
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.machines
              hsPkgs.machines-binary
              hsPkgs.machines-io
              hsPkgs.msgpack
              hsPkgs.network
              hsPkgs.process
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.unordered-containers
            ];
          };
          "sarsi-sbt" = {
            depends  = [
              hsPkgs.base
              hsPkgs.sarsi
              hsPkgs.machines
              hsPkgs.machines-io
              hsPkgs.machines-process
              hsPkgs.process
              hsPkgs.text
            ];
          };
        };
      };
    }