{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "bullet"; version = "0.2.3"; };
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
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."vect" or (errorHandler.buildDepError "vect"))
          ];
        libs = if system.isLinux
          then [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ]
          else [
            (pkgs."BulletSoftBody" or (errorHandler.sysDepError "BulletSoftBody"))
            (pkgs."BulletDynamics" or (errorHandler.sysDepError "BulletDynamics"))
            (pkgs."BulletCollision" or (errorHandler.sysDepError "BulletCollision"))
            (pkgs."LinearMath" or (errorHandler.sysDepError "LinearMath"))
            (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
            ];
        pkgconfig = (pkgs.lib).optional (system.isLinux) (pkgconfPkgs."bullet" or (errorHandler.pkgConfDepError "bullet"));
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }