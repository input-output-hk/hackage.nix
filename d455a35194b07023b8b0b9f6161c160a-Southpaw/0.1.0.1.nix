{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Southpaw";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "jonatanhsundqvist@gmail.com";
        author = "Jonatan H Sundqvist";
        homepage = "";
        url = "";
        synopsis = "Assorted utility modules";
        description = "Various unrelated utility modules.";
        buildType = "Simple";
      };
      components = {
        "Southpaw" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.Win32
            hsPkgs.OpenGL
            hsPkgs.GLFW-b
            hsPkgs.filepath
            hsPkgs.gtk3
            hsPkgs.cairo
            hsPkgs.bytestring
            hsPkgs.vector
            hsPkgs.ALUT
            hsPkgs.OpenAL
            hsPkgs.JuicyPixels
          ];
        };
      };
    }