{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "edge"; version = "0.8.6"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "christopher.howard@frigidcode.com";
      author = "Christopher Howard";
      homepage = "http://frigidcode.com/code/edge";
      url = "";
      synopsis = "Top view space combat arcade game";
      description = "The Edge has always been a rough patch of interstellar\nspace filled with innumerable bad guys of every nefarious\nsort, and dangerous debris flying in every direction at\nhigh speeds. But now it has grown out of control and is\nthreatening to overflow into colonial space. Central\ncommand has decided to send in their newest super weapon,\nthe Mark II Lance fighter, piloted by their top ace pilot.\nGood luck commander!";
      buildType = "Simple";
      };
    components = {
      exes = {
        "edge" = {
          depends = [
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."wraparound" or ((hsPkgs.pkgs-errors).buildDepError "wraparound"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."ALUT" or ((hsPkgs.pkgs-errors).buildDepError "ALUT"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }