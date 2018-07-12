{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pictikz";
          version = "1.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "marcelogmillani@gmail.com";
        author = "Marcelo Garlet Millani";
        homepage = "";
        url = "";
        synopsis = "Converts a svg image to tikz code.";
        description = "Tikz is often used to draw graphs (i.e., networks) in LaTeX. Even though the resulting image can be very clean, manually writing tikz code can be time consuming, especially when the picture needs to be modified afterwards.\nOn the other side of the spectrum, drawing with graphical tools like inkscape is easy, but getting a clean looking result can be complicated.\nWith pictikz you get the best of both worlds: You draw using a graphical tool and pictikz converts the resulting SVG file to tikz code, making some automatic style adjustments if you desire.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "pictikz" = {
            depends  = [
              hsPkgs.base
              hsPkgs.xml
              hsPkgs.transformers
              hsPkgs.matrix
            ];
          };
        };
      };
    }