{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "load-env";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Pat Brisbin <pbrisbin@gmail.com>";
        author = "Pat Brisbin <pbrisbin@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Load environment variables from a file.";
        description = "Parse a .env file and load any declared variables into\nthe current process's environment. This allows for a\n.env file to specify development-friendly defaults for\nconfiguration values normally set in the deployment\nenvironment.";
        buildType = "Simple";
      };
      components = {
        load-env = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.parsec
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.load-env
              hsPkgs.directory
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.parsec
            ];
          };
        };
      };
    }