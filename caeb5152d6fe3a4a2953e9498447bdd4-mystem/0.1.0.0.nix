{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "mystem";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2016 Sergey N. Yashin";
        maintainer = "yashin.sergey@gmail.com";
        author = "Sergey N. Yashin";
        homepage = "https://github.com/wapxmas/mystem#readme";
        url = "";
        synopsis = "Bindings for Mystem morphological analyzer executabe";
        description = "Bindings for Mystem morphological analyzer executabe";
        buildType = "Simple";
      };
      components = {
        mystem = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.data-default
            hsPkgs.attoparsec
            hsPkgs.directory
            hsPkgs.process
          ];
        };
        exes = {
          mystem-test-exe = {
            depends  = [
              hsPkgs.base
              hsPkgs.mystem
              hsPkgs.text
            ];
          };
        };
      };
    }