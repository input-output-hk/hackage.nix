{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fastly";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Ian Duncan";
        maintainer = "ian@iankduncan.com";
        author = "Ian Duncan";
        homepage = "https://github.com/iand675/fastly#readme";
        url = "";
        synopsis = "A highly experimental Fastly API client.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        fastly = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.http-types
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.unordered-containers
            hsPkgs.iproute
            hsPkgs.bytestring-lexing
            hsPkgs.mtl
            hsPkgs.thyme
            hsPkgs.old-locale
            hsPkgs.wai
          ];
        };
        tests = {
          fastly-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.fastly
              hsPkgs.text
              hsPkgs.hspec
            ];
          };
        };
      };
    }