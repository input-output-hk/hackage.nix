{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "penrose"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "kqy@cs.cmu.edu";
      author = "team-penrose";
      homepage = "http://penrose.ink";
      url = "";
      synopsis = "A system that automatically visualize mathematics";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "penrose" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
            (hsPkgs."ad" or ((hsPkgs.pkgs-errors).buildDepError "ad"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."websockets" or ((hsPkgs.pkgs-errors).buildDepError "websockets"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            ];
          buildable = true;
          };
        };
      };
    }