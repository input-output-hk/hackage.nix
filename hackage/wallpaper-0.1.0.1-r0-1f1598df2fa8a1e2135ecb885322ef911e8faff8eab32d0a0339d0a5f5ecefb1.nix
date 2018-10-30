{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wallpaper";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017 Jeffrey Rosenbluth";
      maintainer = "jeffrey.rosenbluth@gmail.com";
      author = "Jeffrey Rosenbluth";
      homepage = "https://github.com/jeffreyrosenbluth/wallpaper#readme";
      url = "";
      synopsis = "A library and executable for creating\nwallpaper, frieze, and rosette patterns.";
      description = "@wallpaper@ provides the tools needed to make your own\nwallpapers, friezes and rosettes as described in Frank A.\nFarris's beuatiful book\n<http://press.princeton.edu/titles/10435.html Creating Symmetry>.\nFollowing Farris we use the\n<https://en.wikipedia.org/wiki/Domain_coloring domain coloring>\nalgorithm to create recipes that convert an arbitrary image\nto a pattern. For example, using the this image\n\n<<https://raw.githubusercontent.com/jeffreyrosenbluth/wallpaper/master/examples/rose_small.png>>\n\nWe can make\n\n<<https://raw.githubusercontent.com/jeffreyrosenbluth/wallpaper/master/examples/beach_morph.png>>\n\nFor maximum flexibily the @wallpaper@ library provides an\nEDSL for their creation,\nalternatively the @wallpaper@ and @rosette@ executables\ncan be used with a yaml file to create a large variety of\npatterns.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.JuicyPixels)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.yaml)
          (hsPkgs.text)
        ];
      };
      exes = {
        "wallpaper" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wallpaper)
            (hsPkgs.JuicyPixels)
            (hsPkgs.yaml)
          ];
        };
        "rosette" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wallpaper)
            (hsPkgs.JuicyPixels)
            (hsPkgs.yaml)
          ];
        };
      };
      tests = {
        "wallpaper-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wallpaper)
          ];
        };
      };
    };
  }