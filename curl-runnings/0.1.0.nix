{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "curl-runnings";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "2018 Avi Press";
        maintainer = "mail@avi.press";
        author = "Avi Press";
        homepage = "https://github.com/aviaviavi/curl-runnings#readme";
        url = "";
        synopsis = "A framework for declaratively writing curl based API tests";
        description = "Please see the README on Github at <https://github.com/aviaviavi/curl-runnings#readme>";
        buildType = "Simple";
      };
      components = {
        curl-runnings = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.http-conduit
            hsPkgs.text
            hsPkgs.unordered-containers
          ];
        };
        exes = {
          curl-runnings = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cmdargs
              hsPkgs.curl-runnings
              hsPkgs.text
              hsPkgs.yaml
            ];
          };
        };
        tests = {
          curl-runnings-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.curl-runnings
            ];
          };
        };
      };
    }