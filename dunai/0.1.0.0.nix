{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      test-hlint = false;
      test-doc-coverage = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dunai";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ivan.perez@keera.co.uk";
        author = "Ivan Perez, Manuel Bärenz";
        homepage = "";
        url = "";
        synopsis = "Generalised reactive framework supporting classic, arrowized and monadic FRP.";
        description = "";
        buildType = "Simple";
      };
      components = {
        dunai = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.transformers-base
          ];
        };
        tests = {
          hlint = {
            depends  = optionals (!(!_flags.test-hlint)) [
              hsPkgs.base
              hsPkgs.hlint
            ];
          };
          haddock-coverage = {
            depends  = optionals (!(!_flags.test-doc-coverage)) [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.regex-posix
            ];
          };
        };
      };
    }