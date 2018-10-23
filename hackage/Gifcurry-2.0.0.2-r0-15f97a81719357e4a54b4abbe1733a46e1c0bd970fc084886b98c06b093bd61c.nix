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
        name = "Gifcurry";
        version = "2.0.0.2";
      };
      license = "Apache-2.0";
      copyright = "(C) 2016 David Lettier";
      maintainer = "Lettier";
      author = "Lettier";
      homepage = "https://github.com/lettier/gifcurry";
      url = "";
      synopsis = "Create animated GIFs, overlaid with optional text, from video files.";
      description = "GIF creation utility.";
      buildType = "Simple";
    };
    components = {
      "Gifcurry" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.temporary)
          (hsPkgs.directory)
        ];
      };
      exes = {
        "gifcurry_gui" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gtk3)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.directory)
          ];
        };
        "gifcurry_cli" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.directory)
            (hsPkgs.cmdargs)
          ];
        };
      };
    };
  }