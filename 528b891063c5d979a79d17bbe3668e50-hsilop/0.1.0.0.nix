{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hsilop";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "micheleguerinirocco@me.com";
        author = "Rnhmjoj";
        homepage = "https://github.com/Rnhmjoj/hsilop";
        url = "";
        synopsis = "RPN calculator";
        description = "ʜƨiloꟼ is a simple reverse polish notation calculator\nwith haskeline line editing capabilites.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hsilop = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskeline
            ];
          };
        };
      };
    }