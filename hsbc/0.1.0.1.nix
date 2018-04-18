{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hsbc";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "grogers385@gmail.com";
        author = "George Rogers";
        homepage = "";
        url = "";
        synopsis = "Command Line Calculator";
        description = "Command Line Calculator";
        buildType = "Simple";
      };
      components = {
        exes = {
          hsbc = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.attoparsec
              hsPkgs.vector
            ];
          };
        };
      };
    }