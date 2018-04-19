{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hascar";
          version = "0.1.0.1";
        };
        license = "GPL-2.0-only";
        copyright = "2016, Virtual Forge GmbH";
        maintainer = "Hans-Christian Esperer <hc@hcesperer.org>";
        author = "Hans-Christian Esperer <hc@hcesperer.org>";
        homepage = "https://github.com/VirtualForgeGmbH/hascar";
        url = "";
        synopsis = "Decompress SAPCAR archives";
        description = "Decompress SAPCAR archives";
        buildType = "Simple";
      };
      components = {
        hascar = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.attoparsec
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.conduit
            hsPkgs.exceptions
            hsPkgs.mtl
            hsPkgs.path
            hsPkgs.pretty-show
            hsPkgs.text
            hsPkgs.time
          ];
        };
        exes = {
          hascar = {
            depends  = [
              hsPkgs.base
              hsPkgs.ansi-wl-pprint
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.gitrev
              hsPkgs.hascar
              hsPkgs.optparse-applicative
              hsPkgs.path
              hsPkgs.pretty-show
              hsPkgs.text
              hsPkgs.transformers
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
          };
        };
        tests = {
          hascar-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.cryptohash
              hsPkgs.hascar
              hsPkgs.hex
              hsPkgs.path
            ];
          };
        };
      };
    }