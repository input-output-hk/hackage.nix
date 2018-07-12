{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "HSmarty";
          version = "0.2.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013 - 2015 by Alexander Thiemann";
        maintainer = "Alexander Thiemann <mail@athiemann.net>";
        author = "Alexander Thiemann <mail@athiemann.net>";
        homepage = "https://github.com/agrafix/HSmarty";
        url = "";
        synopsis = "Small template engine";
        description = "Haskell implementation of a subset of the PHP-Smarty template language";
        buildType = "Simple";
      };
      components = {
        "HSmarty" = {
          depends  = [
            hsPkgs.HTTP
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.attoparsec-expr
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        tests = {
          "TestHSmarty" = {
            depends  = [
              hsPkgs.HSmarty
              hsPkgs.HTF
              hsPkgs.aeson
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.text
            ];
          };
        };
      };
    }