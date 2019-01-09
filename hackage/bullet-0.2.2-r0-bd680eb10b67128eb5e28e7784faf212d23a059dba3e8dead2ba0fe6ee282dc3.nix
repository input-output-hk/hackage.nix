{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "bullet"; version = "0.2.2"; };
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
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.vect) ];
        libs = (pkgs.lib).optionals (!system.isLinux) [
          (pkgs."BulletSoftBody")
          (pkgs."BulletDynamics")
          (pkgs."BulletCollision")
          (pkgs."LinearMath")
          (pkgs."stdc++")
          ];
        pkgconfig = (pkgs.lib).optional (system.isLinux) (pkgconfPkgs.bullet);
        build-tools = [ ((hsPkgs.buildPackages).c2hs) ];
        };
      };
    }