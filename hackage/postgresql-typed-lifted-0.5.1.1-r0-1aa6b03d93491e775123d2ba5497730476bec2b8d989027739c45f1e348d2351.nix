{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "postgresql-typed-lifted"; version = "0.5.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Evan Cofsky";
      maintainer = "evan@theunixman.com";
      author = "Evan Cofsky";
      homepage = "https://gitlab.com/theunixman/postgresql-typed-lifted";
      url = "";
      synopsis = "postgresql-typed operations lifted to any instance of MonadBase or MonadBaseControl.";
      description = "Provides generalized lifted operations for postgresql-typed. Version numbers track postgresql-typed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or ((hsPkgs.pkgs-errors).buildDepError "base-unicode-symbols"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."postgresql-typed" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-typed"))
          ];
        buildable = true;
        };
      };
    }