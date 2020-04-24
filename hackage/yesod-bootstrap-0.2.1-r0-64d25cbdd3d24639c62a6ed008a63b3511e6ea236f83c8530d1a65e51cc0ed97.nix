{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yesod-bootstrap"; version = "0.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "";
      url = "";
      synopsis = "Bootstrap widgets for yesod";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
          (hsPkgs."yesod-form" or ((hsPkgs.pkgs-errors).buildDepError "yesod-form"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."email-validate" or ((hsPkgs.pkgs-errors).buildDepError "email-validate"))
          (hsPkgs."lens-family-th" or ((hsPkgs.pkgs-errors).buildDepError "lens-family-th"))
          (hsPkgs."lens-family-core" or ((hsPkgs.pkgs-errors).buildDepError "lens-family-core"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
          (hsPkgs."yesod-markdown" or ((hsPkgs.pkgs-errors).buildDepError "yesod-markdown"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."conduit-extra" or ((hsPkgs.pkgs-errors).buildDepError "conduit-extra"))
          (hsPkgs."blaze-markup" or ((hsPkgs.pkgs-errors).buildDepError "blaze-markup"))
          (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
          ];
        buildable = true;
        };
      };
    }