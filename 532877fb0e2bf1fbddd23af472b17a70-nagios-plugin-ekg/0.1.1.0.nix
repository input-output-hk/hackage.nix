{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nagios-plugin-ekg";
          version = "0.1.1.0";
        };
        license = "MIT";
        copyright = "2015 Sharif Olorin and Anchor Systems";
        maintainer = "sio@tesser.org";
        author = "Sharif Olorin";
        homepage = "https://github.com/fractalcat/nagios-plugin-ekg";
        url = "";
        synopsis = "Monitor ekg metrics via Nagios";
        description = "A generic Nagios plugin which retrieves metrics\nfrom an application which uses\n<http://hackage.haskell.org/package/ekg ekg>.";
        buildType = "Simple";
      };
      components = {
        nagios-plugin-ekg = {
          depends  = [
            hsPkgs.base
            hsPkgs.nagios-check
            hsPkgs.transformers
            hsPkgs.bytestring
            hsPkgs.optparse-applicative
            hsPkgs.lens
            hsPkgs.aeson
            hsPkgs.wreq
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.containers
          ];
        };
        exes = {
          check_ekg = {
            depends  = [
              hsPkgs.base
              hsPkgs.nagios-check
              hsPkgs.text
              hsPkgs.nagios-plugin-ekg
            ];
          };
        };
        tests = {
          sample-data = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.nagios-check
              hsPkgs.nagios-plugin-ekg
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
        };
      };
    }