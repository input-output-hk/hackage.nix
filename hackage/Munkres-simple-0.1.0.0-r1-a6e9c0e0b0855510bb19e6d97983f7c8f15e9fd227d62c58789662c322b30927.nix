{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Munkres-simple"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jjvk2@cam.ac.uk";
      author = "Josh Kirklin";
      homepage = "";
      url = "";
      synopsis = "Simple and typesafe layer over the Munkres package.";
      description = "Simple and typesafe layer over the Munkres package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."bimap" or ((hsPkgs.pkgs-errors).buildDepError "bimap"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."Munkres" or ((hsPkgs.pkgs-errors).buildDepError "Munkres"))
          ];
        buildable = true;
        };
      };
    }