{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "FractalArt";
        version = "0.2.0.2";
      };
      license = "MIT";
      copyright = "2016 Tom Smeets";
      maintainer = "Tom.TSmeets@Gmail.com";
      author = "Tom Smeets";
      homepage = "https://github.com/TomSmeets/FractalArt";
      url = "";
      synopsis = "Generates colorful wallpapers";
      description = "This application generates colorful images as a wallpaper";
      buildType = "Simple";
    };
    components = {
      exes = {
        "FractalArt" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.mwc-random)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.primitive)
            (hsPkgs.vector)
            (hsPkgs.JuicyPixels)
          ];
          libs = pkgs.lib.optional (system.isLinux) (pkgs."X11") ++ pkgs.lib.optional (system.isOsx) (pkgs."objc");
        };
      };
    };
  }