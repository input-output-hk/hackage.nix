{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "robots-txt";
          version = "0.4.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mwotton@gmail.com";
        author = "Mark Wotton";
        homepage = "http://github.com/meanpath/robots";
        url = "";
        synopsis = "Parser for robots.txt";
        description = "This is an attoparsec parser for robots.txt files";
        buildType = "Simple";
      };
      components = {
        robots-txt = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.attoparsec
            hsPkgs.time
            hsPkgs.old-locale
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.bytestring
              hsPkgs.robots-txt
              hsPkgs.directory
              hsPkgs.transformers
              hsPkgs.attoparsec
              hsPkgs.heredoc
            ];
          };
        };
      };
    }