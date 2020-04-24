{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "djinn-ghc"; version = "0.0.2.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "trupill@gmail.com";
      author = "Alejandro Serrano";
      homepage = "";
      url = "";
      synopsis = "Generate Haskell code from a type. Bridge from Djinn to GHC API.";
      description = "Djinn uses an theorem prover for intuitionistic propositional logic\nto generate a Haskell expression when given a type.\nThis is the bridge from djinn-lib to GHC API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."djinn-lib" or ((hsPkgs.pkgs-errors).buildDepError "djinn-lib"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          ];
        buildable = true;
        };
      };
    }