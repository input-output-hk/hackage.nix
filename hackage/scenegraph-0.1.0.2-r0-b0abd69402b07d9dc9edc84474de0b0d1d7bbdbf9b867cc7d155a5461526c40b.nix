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
        name = "scenegraph";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Mark Wassell 2009";
      maintainer = "none";
      author = "Mark Wassell <mwassell@bigpond.net.au>";
      homepage = "http://www.haskell.org/haskellwiki/SceneGraph";
      url = "";
      synopsis = "Scene Graph";
      description = "Scene Graph Library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.hmatrix)
          (hsPkgs.OpenGL)
          (hsPkgs.GLUT)
          (hsPkgs.haskell98)
          (hsPkgs.containers)
          (hsPkgs.fgl)
          (hsPkgs.array)
          (hsPkgs.old-time)
          (hsPkgs.process)
        ];
      };
    };
  }