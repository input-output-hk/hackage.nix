{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "formattable";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "oz@soostone.com";
        author = "Ozgun Ataman, Doug Beardsley";
        homepage = "https://github.com/Soostone/formattable";
        url = "";
        synopsis = "Business-quality formatting of numbers, dates, and other things";
        description = "This package defines data structures for describing\nbusiness-quality formatting for numbers, dates, etc in a\nway that can be serialized and transported.  Comes with\nexcellent built-in support for formatting numbers.  It\nalso provides a generic interface for formatting other\ntypes as well.";
        buildType = "Simple";
      };
      components = {
        formattable = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.data-default-class
            hsPkgs.double-conversion
            hsPkgs.lens
            hsPkgs.old-locale
            hsPkgs.text
            hsPkgs.time
          ];
        };
        tests = {
          testsuite = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.data-default-class
              hsPkgs.double-conversion
              hsPkgs.hspec
              hsPkgs.lens
              hsPkgs.old-locale
              hsPkgs.text
              hsPkgs.time
            ];
          };
        };
      };
    }