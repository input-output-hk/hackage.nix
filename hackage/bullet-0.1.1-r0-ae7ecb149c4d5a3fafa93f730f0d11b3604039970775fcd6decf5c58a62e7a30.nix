{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "bullet"; version = "0.1.1"; };
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
          ];
        libs = [
          (pkgs."BulletDynamics" or ((hsPkgs.pkgs-errors).sysDepError "BulletDynamics"))
          (pkgs."LinearMath" or ((hsPkgs.pkgs-errors).sysDepError "LinearMath"))
          (pkgs."BulletCollision" or ((hsPkgs.pkgs-errors).sysDepError "BulletCollision"))
          ];
        buildable = true;
        };
      };
    }