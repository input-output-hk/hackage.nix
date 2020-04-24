{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "abt"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "jon@jonmsterling.com";
      author = "Jonathan Sterling";
      homepage = "";
      url = "";
      synopsis = "Abstract binding trees for Haskell";
      description = "A Haskell port of the Carnegie Mellon ABT library (SML), with some improvements.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vinyl" or ((hsPkgs.pkgs-errors).buildDepError "vinyl"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
          ];
        buildable = true;
        };
      };
    }