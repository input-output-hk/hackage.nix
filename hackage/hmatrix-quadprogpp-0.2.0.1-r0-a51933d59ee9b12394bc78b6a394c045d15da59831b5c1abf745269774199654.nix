{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hmatrix-quadprogpp"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alex Lang <me@alang.ca>";
      author = "Alex Lang, Takano Akio";
      homepage = "";
      url = "";
      synopsis = "Bindings to the QuadProg++ quadratic programming library";
      description = "Bindings to QuadProg++, a C++ library for quadratic programming.\n<http://sourceforge.net/projects/quadprog/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."hmatrix" or ((hsPkgs.pkgs-errors).buildDepError "hmatrix"))
          ];
        libs = [
          (pkgs."QuadProgpp" or ((hsPkgs.pkgs-errors).sysDepError "QuadProgpp"))
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          ];
        buildable = true;
        };
      };
    }