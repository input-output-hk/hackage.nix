{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "casadi-bindings-control"; version = "2.0.0.1"; };
      license = "LGPL-3.0-only";
      copyright = "(c) 2013-2014 Greg Horn";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "low level bindings to casadi-control";
      description = "see <http://hackage.haskell.org/package/casadi-bindings http://hackage.haskell.org/package/casadi-bindings> for all instructions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."casadi-bindings-core" or ((hsPkgs.pkgs-errors).buildDepError "casadi-bindings-core"))
          (hsPkgs."casadi-bindings-internal" or ((hsPkgs.pkgs-errors).buildDepError "casadi-bindings-internal"))
          ];
        libs = [
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          ];
        pkgconfig = [
          (pkgconfPkgs."casadi_control" or ((hsPkgs.pkgs-errors).pkgConfDepError "casadi_control"))
          ];
        buildable = true;
        };
      };
    }