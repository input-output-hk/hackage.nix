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
      specVersion = "0";
      identifier = {
        name = "HPong";
        version = "0.1.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Remco Niemeijer <R.A.Niemeijer@tue.nl>";
      author = "Remco Niemeijer";
      homepage = "";
      url = "";
      synopsis = "A simple OpenGL Pong game based on GLFW";
      description = "A simple single-player OpenGL Pong game based on GLFW.\n\nIts main goal is to serve as a basis for other games.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hpong" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.data-accessor)
            (hsPkgs.data-accessor-template)
            (hsPkgs.OpenGL)
            (hsPkgs.GLFW)
          ];
        };
      };
    };
  }