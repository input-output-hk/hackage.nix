{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "bullet";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "csaba (dot) hruska (at) gmail (dot) com";
      author = "Csaba Hruska";
      homepage = "http://www.haskell.org/haskellwiki/Bullet";
      url = "";
      synopsis = "A wrapper for the Bullet physics engine.";
      description = "A wrapper for the Bullet physics engine.";
      buildType = "Simple";
    };
    components = {
      "bullet" = {
        depends  = [ (hsPkgs.base) ];
        libs = [
          (pkgs."BulletDynamics")
          (pkgs."LinearMath")
          (pkgs."BulletCollision")
        ];
      };
    };
  }