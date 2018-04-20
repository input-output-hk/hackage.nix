{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "system-locale";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016";
        maintainer = "moritz.kiefer@purelyfunctional.org";
        author = "Moritz Kiefer";
        homepage = "https://github.com/cocreature/system-locale";
        url = "";
        synopsis = "Get system locales";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        system-locale = {
          depends  = [
            hsPkgs.base
            hsPkgs.megaparsec
            hsPkgs.process
            hsPkgs.time
          ];
        };
        tests = {
          system-locale-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.system-locale
            ];
          };
        };
      };
    }