{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "repa-devil"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Don Stewart (c) 2011";
      maintainer = "dons00@gmail.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/repa-devil";
      url = "";
      synopsis = "Support for image reading and writing of Repa arrays";
      description = "The repa-image library adds support for reading and\nwriting images in many formats based on the DevIL\nopen source image library. Image data is represented in Haskell\nas typed, multi-dimensional repa arrays.\n\nDeveloper\\'s Image Library (DevIL) is a library to\ndevelop applications with very powerful image\nloading capabilities, yet with a relatively simple\ninterface. DevIL can load, save, convert,\nmanipulate, filter and display a wide variety of\nimage formats, including:\n\n* BMP, ICO, JPG, PNG, PNM, TGA, TIF, GIF, EXIF and many more.\n\n/References:/\n\n* <http://hackage.haskell.org/package/repa>\n\n* <http://openil.sourceforge.net/>\n\n* <http://www.haskell.org/haskellwiki/Numeric_Haskell:_A_Repa_Tutorial>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
          (hsPkgs."Codec-Image-DevIL" or ((hsPkgs.pkgs-errors).buildDepError "Codec-Image-DevIL"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }