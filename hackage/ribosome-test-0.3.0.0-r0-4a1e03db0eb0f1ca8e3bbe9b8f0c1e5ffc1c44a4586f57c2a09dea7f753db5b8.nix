{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "ribosome-test"; version = "0.3.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "2019 Torsten Schmits";
      maintainer = "tek@tryp.io";
      author = "Torsten Schmits";
      homepage = "https://github.com/tek/ribosome-hs#readme";
      url = "";
      synopsis = "test helpers for ribosome";
      description = "Please see the README on GitHub at <https://github.com/tek/ribosome-hs>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HTF" or ((hsPkgs.pkgs-errors).buildDepError "HTF"))
          (hsPkgs."base-noprelude" or ((hsPkgs.pkgs-errors).buildDepError "base-noprelude"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."chiasma" or ((hsPkgs.pkgs-errors).buildDepError "chiasma"))
          (hsPkgs."cornea" or ((hsPkgs.pkgs-errors).buildDepError "cornea"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          (hsPkgs."messagepack" or ((hsPkgs.pkgs-errors).buildDepError "messagepack"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."nvim-hs" or ((hsPkgs.pkgs-errors).buildDepError "nvim-hs"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."relude" or ((hsPkgs.pkgs-errors).buildDepError "relude"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."ribosome" or ((hsPkgs.pkgs-errors).buildDepError "ribosome"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."typed-process" or ((hsPkgs.pkgs-errors).buildDepError "typed-process"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."unliftio" or ((hsPkgs.pkgs-errors).buildDepError "unliftio"))
          (hsPkgs."unliftio-core" or ((hsPkgs.pkgs-errors).buildDepError "unliftio-core"))
          ];
        buildable = true;
        };
      };
    }