{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gloss-accelerate"; version = "2.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Trevor L. McDonell <tmcdonell@cse.unsw.edu.au>";
      author = "Trevor L. McDonell";
      homepage = "";
      url = "";
      synopsis = "Extras to interface Gloss and Accelerate";
      description = "Extras to interface Gloss and Accelerate";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."accelerate" or ((hsPkgs.pkgs-errors).buildDepError "accelerate"))
          (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
          (hsPkgs."gloss-rendering" or ((hsPkgs.pkgs-errors).buildDepError "gloss-rendering"))
          ];
        buildable = true;
        };
      };
    }