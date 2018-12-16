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
      specVersion = "1.6";
      identifier = {
        name = "click-clack";
        version = "1.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2012 Anton Kholomiov";
      maintainer = "<anton.kholomiov@gmail.com>";
      author = "Anton Kholomiov";
      homepage = "";
      url = "";
      synopsis = "Toy game (tetris on billiard board). Hipmunk in action.";
      description = "Control red ball with mouse clicks. Avoid blue balls (minus one live) and\ngo for green balls (plus one live) and orange balls (bonus).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "click-clack" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.MonadRandom)
            (hsPkgs.Hipmunk)
            (hsPkgs.transformers)
            (hsPkgs.OpenGL)
            (hsPkgs.StateVar)
            (hsPkgs.GLFW)
          ];
        };
      };
    };
  }