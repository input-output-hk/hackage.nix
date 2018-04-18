{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "postgres-tmp";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016";
        maintainer = "moritz.kiefer@purelyfunctional.org";
        author = "Moritz Kiefer";
        homepage = "https://github.com/cocreature/postgres-tmp#readme";
        url = "";
        synopsis = "Create a temporary database that is deleted after performing some operation";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        postgres-tmp = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.postgresql-simple
            hsPkgs.text
          ];
        };
      };
    }