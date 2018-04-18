{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "legion-extra";
          version = "0.1.2.1";
        };
        license = "Apache-2.0";
        copyright = "2016 Rick Owens";
        maintainer = "rick@owensmurray.com";
        author = "Rick Owens";
        homepage = "https://github.com/owensmurray/legion-extra#readme";
        url = "";
        synopsis = "Extra non-essential utilities for building legion applications.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        legion-extra = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.canteven-log
            hsPkgs.conduit
            hsPkgs.containers
            hsPkgs.data-default-class
            hsPkgs.data-dword
            hsPkgs.directory
            hsPkgs.legion
            hsPkgs.network
            hsPkgs.safe
            hsPkgs.split
            hsPkgs.stm
            hsPkgs.transformers
            hsPkgs.yaml
          ];
        };
        tests = {
          legion-extra-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.legion-extra
            ];
          };
        };
      };
    }