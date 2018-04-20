{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "text-manipulate";
          version = "0.2.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Copyright (c) 2014-2015 Brendan Hay";
        maintainer = "Brendan Hay <brendan.g.hay@gmail.com>";
        author = "Brendan Hay";
        homepage = "https://github.com/brendanhay/text-manipulate";
        url = "";
        synopsis = "Case conversion, word boundary manipulation, and textual subjugation.";
        description = "Manipulate identifiers and structurally non-complex pieces\nof text by delimiting word boundaries via a combination of whitespace,\ncontrol-characters, and case-sensitivity.\n\nHas support for common idioms like casing of programmatic variable names,\ntaking, dropping, and splitting by word, and modifying the first character\nof a piece of text.\n\n/Caution:/ this library makes heavy use of the <http://hackage.haskell.org/package/text text>\nlibrary's internal loop optimisation framework. Since internal modules are not\nguaranteed to have a stable API there is potential for build breakage when\nthe text dependency is upgraded. Consider yourself warned!";
        buildType = "Simple";
      };
      components = {
        text-manipulate = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.text-manipulate
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.text
            ];
          };
        };
        benchmarks = {
          benchmarks = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.text-manipulate
              hsPkgs.text
            ];
          };
        };
      };
    }