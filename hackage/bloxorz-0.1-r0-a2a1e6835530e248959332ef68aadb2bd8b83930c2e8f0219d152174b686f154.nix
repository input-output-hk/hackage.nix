{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "bloxorz"; version = "0.1"; };
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
          depends = [ (hsPkgs.base) (hsPkgs.OpenGL) (hsPkgs.GLFW) ];
          };
        };
      };
    }