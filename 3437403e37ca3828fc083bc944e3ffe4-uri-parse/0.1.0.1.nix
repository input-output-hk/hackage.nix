{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "uri-parse";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Savanni D'Gerinel";
        maintainer = "savanni@luminescent-dreams.com";
        author = "Savanni D'Gerinel";
        homepage = "https://github.com/luminescent-dreams/uri-parse#readme";
        url = "";
        synopsis = "A simple library for parsing and generating URIs";
        description = "A simple library for parsing and generating URIs";
        buildType = "Simple";
      };
      components = {
        "uri-parse" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.http-types
            hsPkgs.lens
            hsPkgs.text
          ];
        };
        tests = {
          "uri-parse-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.uri-parse
              hsPkgs.data-default
              hsPkgs.hspec
              hsPkgs.lens
            ];
          };
        };
      };
    }