{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "legion-extra";
          version = "0.1.0.4";
        };
        license = "Apache-2.0";
        copyright = "2016 Rick Owens";
        maintainer = "rick@owensmurray.comm";
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
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.canteven-log
            hsPkgs.containers
            hsPkgs.data-default-class
            hsPkgs.legion
            hsPkgs.network
            hsPkgs.safe
            hsPkgs.split
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