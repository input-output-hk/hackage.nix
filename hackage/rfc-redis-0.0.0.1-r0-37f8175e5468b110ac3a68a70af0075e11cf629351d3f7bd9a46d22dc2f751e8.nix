{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { production = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "rfc-redis"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "smokejumperit+rfc@gmail.com";
      author = "Robert Fischer";
      homepage = "https://github.com/RobertFischer/rfc#readme";
      url = "";
      synopsis = "The Redis extensions from the Robert Fischer Commons.";
      description = "Various capabilities supporting @Redis@/@Hedis@ development, including some simplification of the interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hedis" or ((hsPkgs.pkgs-errors).buildDepError "hedis"))
          (hsPkgs."rfc-env" or ((hsPkgs.pkgs-errors).buildDepError "rfc-env"))
          (hsPkgs."rfc-prelude" or ((hsPkgs.pkgs-errors).buildDepError "rfc-prelude"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }