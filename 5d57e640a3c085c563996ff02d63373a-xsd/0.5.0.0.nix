{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "xsd";
          version = "0.5.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2010-2014 Tony Morris, Stefan Wehr";
        maintainer = "Stefan Wehr <wehr@factisresearch.com>, Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
        homepage = "https://github.com/tonymorris/xsd";
        url = "";
        synopsis = "XML Schema data structures";
        description = "XML Schema data structures (XSD)";
        buildType = "Custom";
      };
      components = {
        "xsd" = {
          depends  = [
            hsPkgs.base
            hsPkgs.attoparsec
            hsPkgs.text
            hsPkgs.time
            hsPkgs.lens
          ];
        };
        tests = {
          "doctests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
            ];
          };
        };
      };
    }