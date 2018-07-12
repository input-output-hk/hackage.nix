{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      small_base = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "scaleimage";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dons@galois.com";
        author = "Don Stewart";
        homepage = "http://code.haskell.org/~dons/code/scaleimage";
        url = "";
        synopsis = "Scale an image to a new geometry";
        description = "Scale image is a small command line tool to scale\nan image file to a specified geometry. File types\nsupported: png, jpg, gif. Input and output formats\ncan differ. Example:\n\n> scaleimage 128 128 photo.gif photo.png\n";
        buildType = "Simple";
      };
      components = {
        exes = {
          "scaleimage" = {
            depends  = [
              hsPkgs.base
              hsPkgs.gd
              hsPkgs.filepath
            ];
          };
        };
      };
    }