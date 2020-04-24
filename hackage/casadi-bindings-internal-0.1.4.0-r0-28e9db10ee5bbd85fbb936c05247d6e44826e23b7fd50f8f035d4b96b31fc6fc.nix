{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "casadi-bindings-internal"; version = "0.1.4.0"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2013-2015 Greg Horn";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "http://github.com/ghorn/casadi-bindings";
      url = "";
      synopsis = "low level bindings to CasADi";
      description = "see <http://hackage.haskell.org/package/casadi-bindings http://hackage.haskell.org/package/casadi-bindings> for all instructions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        libs = [
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          ];
        pkgconfig = [
          (pkgconfPkgs."casadi" or ((hsPkgs.pkgs-errors).pkgConfDepError "casadi"))
          ];
        buildable = true;
        };
      };
    }