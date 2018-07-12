{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lord";
          version = "1.20131115";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "remotenonsense@gmail.com";
        author = "rnons";
        homepage = "https://github.com/rnons/lord";
        url = "";
        synopsis = "A command line interface to online radios.";
        description = "A unified interface to online radio service providers, use mpd as backend.\n\nSupported radios:\n<http://radioreddit.com>\n<http://cmd.fm>\n<http://douban.fm>\n<http://jing.fm>";
        buildType = "Simple";
      };
      components = {
        exes = {
          "lord" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.ansi-terminal
              hsPkgs.attoparsec-conduit
              hsPkgs.bytestring
              hsPkgs.case-insensitive
              hsPkgs.conduit
              hsPkgs.configurator
              hsPkgs.daemons
              hsPkgs.data-default
              hsPkgs.directory
              hsPkgs.fast-logger
              hsPkgs.html-conduit
              hsPkgs.http-conduit
              hsPkgs.http-types
              hsPkgs.libmpd
              hsPkgs.optparse-applicative
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unix
              hsPkgs.unordered-containers
              hsPkgs.utf8-string
              hsPkgs.xml-conduit
              hsPkgs.yaml
            ];
          };
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.ansi-terminal
              hsPkgs.attoparsec-conduit
              hsPkgs.bytestring
              hsPkgs.case-insensitive
              hsPkgs.conduit
              hsPkgs.configurator
              hsPkgs.daemons
              hsPkgs.data-default
              hsPkgs.directory
              hsPkgs.fast-logger
              hsPkgs.hspec
              hsPkgs.html-conduit
              hsPkgs.http-conduit
              hsPkgs.http-types
              hsPkgs.HUnit
              hsPkgs.libmpd
              hsPkgs.optparse-applicative
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.unix
              hsPkgs.unordered-containers
              hsPkgs.utf8-string
              hsPkgs.xml-conduit
              hsPkgs.yaml
            ];
          };
        };
      };
    }