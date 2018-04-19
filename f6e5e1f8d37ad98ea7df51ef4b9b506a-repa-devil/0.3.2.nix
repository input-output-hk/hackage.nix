{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "repa-devil";
          version = "0.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "Don Stewart (c) 2011, Raphael Javaux (c) 2012";
        maintainer = "Raphael Javaux <raphaeljavaux[at]gmail.com>";
        author = "Don Stewart, Raphael Javaux";
        homepage = "https://github.com/RaphaelJ/repa-devil";
        url = "";
        synopsis = "Support for image reading and writing of Repa arrays using in-place FFI calls";
        description = "The repa-image library adds support for reading and\nwriting images in many formats based on the DevIL\nopen source image library. Image data is represented in Haskell\nas typed, multi-dimensional repa arrays.\n\nDeveloper\\'s Image Library (DevIL) is a library to\ndevelop applications with very powerful image\nloading capabilities, yet with a relatively simple\ninterface. DevIL can load, save, convert,\nmanipulate, filter and display a wide variety of\nimage formats, including:\n\n* BMP, ICO, JPG, PNG, PNM, TGA, TIF, GIF, EXIF and many more.\n\n/References:/\n\n* <http://hackage.haskell.org/package/repa>\n\n* <http://openil.sourceforge.net/>\n\n* <http://www.haskell.org/haskellwiki/Numeric_Haskell:_A_Repa_Tutorial>";
        buildType = "Simple";
      };
      components = {
        repa-devil = {
          depends  = [
            hsPkgs.base
            hsPkgs.repa
            hsPkgs.transformers
          ];
          libs = [ pkgs.IL ];
        };
      };
    }