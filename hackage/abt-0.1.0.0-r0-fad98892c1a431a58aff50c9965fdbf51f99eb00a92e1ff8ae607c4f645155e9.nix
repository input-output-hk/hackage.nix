{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "abt"; version = "0.1.0.0"; };
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
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }