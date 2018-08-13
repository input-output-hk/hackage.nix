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
        name = "spice";
        version = "0.3.2.1";
      };
      license = "MIT";
      copyright = "(c) 2014, Cerek Hillen";
      maintainer = "Cerek Hillen <cerekh@gmail.com>";
      author = "Cerek Hillen";
      homepage = "http://github.com/crockeo/spice";
      url = "";
      synopsis = "An FRP-based game engine written in Haskell.";
      description = "An FRP-based game engine written in Haskell. - See the homepage for more information.";
      buildType = "Simple";
    };
    components = {
      "spice" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.elerea)
          (hsPkgs.GLFW)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.OpenGL)
        ];
      };
    };
  }