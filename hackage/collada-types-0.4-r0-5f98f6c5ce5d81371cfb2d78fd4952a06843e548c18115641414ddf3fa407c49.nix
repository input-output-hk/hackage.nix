{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "collada-types"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tillk.vogt@gmail.com";
      author = "Tillmann Vogt";
      homepage = "";
      url = "";
      synopsis = "Data exchange between graphics applications";
      description = "Collada is the standard graphics format for data exchange between 3d tools. Not only the file format but also its representation as an algebraic data type could be used to make libraries more composable.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."tuple" or ((hsPkgs.pkgs-errors).buildDepError "tuple"))
          ];
        buildable = true;
        };
      };
    }