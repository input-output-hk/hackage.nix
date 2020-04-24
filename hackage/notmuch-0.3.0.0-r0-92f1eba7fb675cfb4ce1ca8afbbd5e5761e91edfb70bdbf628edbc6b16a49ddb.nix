{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { demos = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "notmuch"; version = "0.3.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2014-2018  Fraser Tweedale";
      maintainer = "frase@frase.id.au";
      author = "Fraser Tweedale";
      homepage = "https://github.com/purebred-mua/hs-notmuch";
      url = "";
      synopsis = "Haskell binding to Notmuch, the mail indexer";
      description = "Binding to the notmuch mail indexer, providing a hopefully\nsomewhat typesafe way to search your email.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        libs = [
          (pkgs."notmuch" or ((hsPkgs.pkgs-errors).sysDepError "notmuch"))
          (pkgs."talloc" or ((hsPkgs.pkgs-errors).sysDepError "talloc"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      exes = {
        "hs-notmuch-files" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."notmuch" or ((hsPkgs.pkgs-errors).buildDepError "notmuch"))
            ];
          buildable = if !flags.demos then false else true;
          };
        "hs-notmuch-tag-message" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."notmuch" or ((hsPkgs.pkgs-errors).buildDepError "notmuch"))
            ];
          buildable = if !flags.demos then false else true;
          };
        "hs-notmuch-tag-count" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."notmuch" or ((hsPkgs.pkgs-errors).buildDepError "notmuch"))
            ];
          buildable = if !flags.demos then false else true;
          };
        "hs-notmuch-tag-set" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."notmuch" or ((hsPkgs.pkgs-errors).buildDepError "notmuch"))
            ];
          buildable = if !flags.demos then false else true;
          };
        "hs-notmuch-index-file" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."notmuch" or ((hsPkgs.pkgs-errors).buildDepError "notmuch"))
            ];
          buildable = if !flags.demos then false else true;
          };
        };
      };
    }