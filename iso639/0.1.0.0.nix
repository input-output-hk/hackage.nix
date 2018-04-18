{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "iso639";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mr.hugo.gomes@gmail.com";
        author = "HugoDaniel";
        homepage = "";
        url = "";
        synopsis = "ISO-639-1 language codes mapping to Haskell datatypes from the official site (http://www.loc.gov/standards/iso639-2/php/English_list.php)";
        description = "";
        buildType = "Simple";
      };
      components = {
        iso639 = {
          depends  = [ hsPkgs.base ];
        };
      };
    }