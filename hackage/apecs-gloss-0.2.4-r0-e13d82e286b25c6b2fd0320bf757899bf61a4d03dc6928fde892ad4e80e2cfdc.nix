{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "apecs-gloss"; version = "0.2.4"; };
      license = "BSD-3-Clause";
      copyright = "MIT";
      maintainer = "jonascarpay@gmail.com";
      author = "Jonas Carpay";
      homepage = "https://github.com/jonascarpay/apecs/apecs-gloss";
      url = "";
      synopsis = "Simple gloss renderer for apecs";
      description = "Simple 2D gloss-based rendering for apecs.\nIntended for prototyping.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."apecs" or ((hsPkgs.pkgs-errors).buildDepError "apecs"))
          (hsPkgs."apecs-physics" or ((hsPkgs.pkgs-errors).buildDepError "apecs-physics"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
          (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
          ];
        buildable = true;
        };
      };
    }