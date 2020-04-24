{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "apecs-gloss"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "MIT";
      maintainer = "jonascarpay@gmail.com";
      author = "Jonas Carpay";
      homepage = "https://github.com/jonascarpay/apecs-physics#readme";
      url = "";
      synopsis = "Simple gloss renderer for apecs";
      description = "Simple 2D gloss-based rendering for apecs.\nIntended for prototyping.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."apecs" or ((hsPkgs.pkgs-errors).buildDepError "apecs"))
          (hsPkgs."apecs-physics" or ((hsPkgs.pkgs-errors).buildDepError "apecs-physics"))
          (hsPkgs."linear" or ((hsPkgs.pkgs-errors).buildDepError "linear"))
          (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
          ];
        buildable = true;
        };
      };
    }