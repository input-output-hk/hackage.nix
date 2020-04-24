{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "netwire-input-javascript"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ziocroc@gmail.com";
      author = "Luca \"ziocroc\" Prezzavento";
      homepage = "https://github.com/ziocroc/netwire-input-javascript";
      url = "";
      synopsis = "JavaScript instance of netwire-input";
      description = "GHCJS implementation of netwire-input.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghcjs-base" or ((hsPkgs.pkgs-errors).buildDepError "ghcjs-base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."netwire" or ((hsPkgs.pkgs-errors).buildDepError "netwire"))
          (hsPkgs."netwire-input" or ((hsPkgs.pkgs-errors).buildDepError "netwire-input"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }