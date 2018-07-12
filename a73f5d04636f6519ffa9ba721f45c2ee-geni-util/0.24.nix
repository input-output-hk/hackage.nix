{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "geni-util";
          version = "0.24";
        };
        license = "GPL-2.0-only";
        copyright = "";
        maintainer = "eric.kow@gmail.com";
        author = "Eric Kow";
        homepage = "http://kowey.github.io/GenI";
        url = "";
        synopsis = "Companion tools for use with the GenI surface realiser";
        description = "Tools included:\n\n* client - sends all test cases from a GenI suite to geniserver, and saves\nresults in the same format as batch mode GenI\n\n* report - generates an HTML summary of a GenI batch operation";
        buildType = "Simple";
      };
      components = {
        "geni-util" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.HTTP
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.GenI
            hsPkgs.geniserver
            hsPkgs.io-streams
            hsPkgs.http-streams
            hsPkgs.json
            hsPkgs.text
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
          ];
        };
        exes = {
          "geni-util" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cmdargs
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.geni-util
              hsPkgs.GenI
              hsPkgs.json
              hsPkgs.text
            ];
          };
        };
      };
    }