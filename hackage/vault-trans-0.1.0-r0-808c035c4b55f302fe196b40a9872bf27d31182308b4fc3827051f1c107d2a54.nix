{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "vault-trans"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Bitnomial, Inc. (c) 2018";
      maintainer = "michael@bitnomial.com, opensource@bitnomial.com";
      author = "Michael Dunn";
      homepage = "https://github.com/bitnomial/vault-trans";
      url = "";
      synopsis = "A monad transformer for vault-tool";
      description = "Monad transformer for interfacing with vault.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vault-tool" or ((hsPkgs.pkgs-errors).buildDepError "vault-tool"))
          ];
        buildable = true;
        };
      };
    }