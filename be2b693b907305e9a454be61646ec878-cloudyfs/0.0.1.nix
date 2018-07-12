{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cloudyfs";
          version = "0.0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Brendan Hickey <brendan@bhickey.net>";
        author = "Brendan Hickey <brendan@bhickey.net>";
        homepage = "";
        url = "";
        synopsis = "A cloud in the file system.";
        description = "A cloud in the file system.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "cloudyfs" = {
            depends  = [
              hsPkgs.base
              hsPkgs.unix
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.HFuse
              hsPkgs.filepath
              hsPkgs.regex-tdfa
              hsPkgs.regex-base
              hsPkgs.tagsoup
              hsPkgs.HTTP
              hsPkgs.timerep
              hsPkgs.convertible
              hsPkgs.datetime
            ];
          };
        };
      };
    }