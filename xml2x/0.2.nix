{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "xml2x";
          version = "0.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Ketil Malde <ketil@malde.org>";
        author = "Ketil Malde";
        homepage = "";
        url = "";
        synopsis = "Convert BLAST output in XML format to CSV or HTML";
        description = "xml2x - convert blast output in XML format, either to a (csv)\ntable suitable for e.g. importing into Excel or OOCalc, or\nto HTML.  Optionally annotating the output with GO terms.";
        buildType = "Simple";
      };
      components = {
        exes = {
          xml2x = {
            depends  = [
              hsPkgs.base
              hsPkgs.bio
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.array
              hsPkgs.xhtml
              hsPkgs.directory
            ];
          };
        };
      };
    }