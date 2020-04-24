{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "nonlinear-optimization-ad"; version = "0.2.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2013 Masahiro Sakai";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
      homepage = "https://github.com/msakai/nonlinear-optimization-ad";
      url = "";
      synopsis = "Wrapper of nonlinear-optimization package for using with AD package";
      description = "Wrapper of nonlinear-optimization package for using with AD package";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."nonlinear-optimization" or ((hsPkgs.pkgs-errors).buildDepError "nonlinear-optimization"))
          (hsPkgs."ad" or ((hsPkgs.pkgs-errors).buildDepError "ad"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."reflection" or ((hsPkgs.pkgs-errors).buildDepError "reflection"))
          ];
        buildable = true;
        };
      };
    }