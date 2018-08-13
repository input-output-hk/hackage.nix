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
      specVersion = "1.2";
      identifier = {
        name = "bloxorz";
        version = "0.1.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Viktor Devecseri <devi86@gmail.com>";
      author = "Viktor Devecseri";
      homepage = "";
      url = "";
      synopsis = "OpenGL Logic Game";
      description = "Roll the block on the board to the end hole.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "bloxorz" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.OpenGL)
            (hsPkgs.GLFW)
          ];
        };
      };
    };
  }