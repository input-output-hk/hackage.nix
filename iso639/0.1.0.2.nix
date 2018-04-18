{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "iso639";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2013-2014 Hugo Daniel Gomes";
        maintainer = "mr.hugo.gomes@gmail.com";
        author = "HugoDaniel";
        homepage = "https://github.com/HugoDaniel/iso639";
        url = "";
        synopsis = "ISO-639-1 language codes";
        description = "\nISO-639-1 language codes mapping to Haskell datatypes\n\nThe code is generated from the <http://www.loc.gov/standards/iso639-2/php/English_list.php official site> using haskell-src-exts in an extra file included in the .tar.gz.\n\nSpecial thanks to Petter Bergman for the suggestions and bug fixing\n";
        buildType = "Simple";
      };
      components = {
        iso639 = {
          depends  = [ hsPkgs.base ];
        };
      };
    }