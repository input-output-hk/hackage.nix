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
      specVersion = "1.6";
      identifier = {
        name = "lambdacube-engine";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "csaba (dot) hruska (at) gmail (dot) com";
      author = "Csaba Hruska";
      homepage = "http://www.haskell.org/haskellwiki/LambdaCubeEngine";
      url = "";
      synopsis = "3D rendering engine entirely written in Haskell";
      description = "LambdaCube is a 3D rendering engine written entirely in Haskell.\nIt targets newer graphics hardware. The engine uses Ogre3D's mesh\nand material file format. The main goal of this project is to\nprovide a modern and feature rich graphical backend for various\nhaskell projects (e.g. FRP libraries).";
      buildType = "Simple";
    };
    components = {
      "lambdacube-engine" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.zip-archive)
          (hsPkgs.binary)
          (hsPkgs.uulib)
          (hsPkgs.OpenGL)
          (hsPkgs.bytestring)
          (hsPkgs.xml)
          (hsPkgs.stb-image)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.fgl)
          (hsPkgs.hslogger)
        ];
      };
    };
  }