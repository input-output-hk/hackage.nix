{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bgmax";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jon.petter.bergman@gmail.com";
        author = "Petter Bergman";
        homepage = "http://petterbergman.se/bgmax.html";
        url = "";
        synopsis = "Parse BgMax-files";
        description = "A low-level parser for\n<http://www.bgc.se/upload/Gemensamt/Trycksaker/Manualer/BG6040.pdf BgMax>\n-files from <http://www.bgc.se Bankgirocentralen> (BGC).\nIt is able to parse all of the\n<http://www.bgc.se/templates/Iframe____3125.aspx example files> from BGC.";
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