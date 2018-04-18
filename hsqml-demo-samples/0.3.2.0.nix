{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      opengl = true;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hsqml-demo-samples";
          version = "0.3.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Robin KAY";
        maintainer = "komadori@gekkou.co.uk";
        author = "Robin KAY";
        homepage = "http://www.gekkou.co.uk/software/hsqml/";
        url = "";
        synopsis = "HsQML sample programs";
        description = "HsQML sample programs";
        buildType = "Simple";
      };
      components = {
        exes = {
          hsqml-factorial1 = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.hsqml
            ];
          };
          hsqml-factorial2 = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.hsqml
            ];
          };
          hsqml-opengl1 = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.OpenGL
              hsPkgs.OpenGLRaw
              hsPkgs.hsqml
            ];
          };
        };
      };
    }