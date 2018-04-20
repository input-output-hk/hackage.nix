{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "countable-inflections";
          version = "0.0.1";
        };
        license = "MIT";
        copyright = "2016 Brady Ouren";
        maintainer = "Brady Ouren <brady@andand.co>";
        author = "Brady Ouren <brady@andand.co>";
        homepage = "https://github.com/tippenein/countable-inflections";
        url = "";
        synopsis = "Countable Text Inflections";
        description = "Provides methods for singularizing and pluralizing text.\nThe library is based on Rails' inflections.";
        buildType = "Simple";
      };
      components = {
        countable-inflections = {
          depends  = [
            hsPkgs.base
            hsPkgs.exceptions
            hsPkgs.text
            hsPkgs.pcre-light
            hsPkgs.bytestring
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.countable-inflections
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.text
            ];
          };
        };
      };
    }