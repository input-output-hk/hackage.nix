{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Gifcurry";
        version = "0.1.0.6";
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
          ];
        };
      };
    };
  }