{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { disable-default-paths = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hmatrix-glpk"; version = "0.19.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Alberto Ruiz <aruiz@um.es>";
      author = "Alberto Ruiz";
      homepage = "https://github.com/albertoruiz/hmatrix";
      url = "";
      synopsis = "Linear Programming based on GLPK";
      description = "Simple interface to linear programming functions provided by GLPK.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        libs = [ (pkgs."glpk" or ((hsPkgs.pkgs-errors).sysDepError "glpk")) ];
        buildable = true;
        };
      };
    }