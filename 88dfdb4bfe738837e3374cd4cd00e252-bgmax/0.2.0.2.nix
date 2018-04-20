{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bgmax";
          version = "0.2.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jon.petter.bergman@gmail.com";
        author = "Petter Bergman";
        homepage = "http://github.com/jonpetterbergman/bgmax";
        url = "";
        synopsis = "Parse BgMax-files";
        description = "A parser for\n<http://www.autogiro.se/globalassets/dokument/tekniska-manualer/bankgiroinbetalningar_tekniskmanual_sv.pdf BgMax>\n-files from <http://www.autogiro.se BankGirot>.\nIt is able to parse all of the\n<http://www.autogiro.se/tjanster/inbetalningar/bankgiro-inbetalningar/teknisk-information/ example files> from BGC.";
        buildType = "Simple";
      };
      components = {
        bgmax = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.bytestring
            hsPkgs.attoparsec
          ];
        };
      };
    }