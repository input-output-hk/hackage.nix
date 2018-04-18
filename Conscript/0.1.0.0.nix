{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Conscript";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "lyndon@sordina.net";
        author = "Lyndon Maydwell";
        homepage = "https://github.com/sordina/Conscript";
        url = "";
        synopsis = "Restart a command on STDIN activity";
        description = "Restart a command on STDIN activity";
        buildType = "Simple";
      };
      components = {
        exes = {
          conscript = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
            ];
          };
        };
      };
    }