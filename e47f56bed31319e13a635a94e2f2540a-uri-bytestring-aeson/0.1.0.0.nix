{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "uri-bytestring-aeson";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "hafnersimon@gmail.com";
        author = "Simon Hafner";
        homepage = "https://github.com/reactormonk/uri-bytestring-aeson";
        url = "";
        synopsis = "Aeson instances for URI Bytestring";
        description = "";
        buildType = "Simple";
      };
      components = {
        "uri-bytestring-aeson" = {
          depends  = [
            hsPkgs.base
            hsPkgs.uri-bytestring
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.text
          ];
        };
      };
    }