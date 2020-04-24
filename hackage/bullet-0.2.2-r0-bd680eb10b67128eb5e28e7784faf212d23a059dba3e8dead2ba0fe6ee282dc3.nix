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
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vect" or ((hsPkgs.pkgs-errors).buildDepError "vect"))
          ];
        libs = (pkgs.lib).optionals (!system.isLinux) [
          (pkgs."BulletSoftBody" or ((hsPkgs.pkgs-errors).sysDepError "BulletSoftBody"))
          (pkgs."BulletDynamics" or ((hsPkgs.pkgs-errors).sysDepError "BulletDynamics"))
          (pkgs."BulletCollision" or ((hsPkgs.pkgs-errors).sysDepError "BulletCollision"))
          (pkgs."LinearMath" or ((hsPkgs.pkgs-errors).sysDepError "LinearMath"))
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          ];
        pkgconfig = (pkgs.lib).optional (system.isLinux) (pkgconfPkgs."bullet" or ((hsPkgs.pkgs-errors).pkgConfDepError "bullet"));
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }