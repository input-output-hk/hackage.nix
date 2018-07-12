{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "avwx";
          version = "0.3.0.2";
        };
        license = "MIT";
        copyright = "2016, Hans-Christian Esperer";
        maintainer = "Hans-Christian Esperer <hc@hcesperer.org>";
        author = "Hans-Christian Esperer <hc@hcesperer.org>";
        homepage = "https://www.hcesperer.org/posts/2016-09-20-avwx.html";
        url = "";
        synopsis = "Parse aviation weather reports";
        description = "Parse aviation weather reports, currently METARs and TAFs";
        buildType = "Simple";
      };
      components = {
        "avwx" = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.attoparsec
            hsPkgs.parsers
            hsPkgs.HTTP
            hsPkgs.text
          ];
        };
        exes = {
          "metar" = {
            depends  = [
              hsPkgs.base
              hsPkgs.avwx
              hsPkgs.optparse-applicative
              hsPkgs.pretty-show
              hsPkgs.text
            ];
          };
        };
        tests = {
          "avwx-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.attoparsec
              hsPkgs.avwx
              hsPkgs.lens
              hsPkgs.pretty-show
              hsPkgs.text
            ];
          };
        };
      };
    }