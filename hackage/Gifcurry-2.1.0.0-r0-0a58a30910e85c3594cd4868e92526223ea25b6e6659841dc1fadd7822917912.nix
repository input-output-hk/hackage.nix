{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Gifcurry"; version = "2.1.0.0"; };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.temporary)
          (hsPkgs.directory)
          (hsPkgs.text)
          (hsPkgs.filepath)
          ];
        };
      exes = {
        "gifcurry_gui" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.gtk3)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.filepath)
            ];
          };
        "gifcurry_cli" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.directory)
            (hsPkgs.cmdargs)
            (hsPkgs.text)
            (hsPkgs.filepath)
            ];
          };
        };
      };
    }