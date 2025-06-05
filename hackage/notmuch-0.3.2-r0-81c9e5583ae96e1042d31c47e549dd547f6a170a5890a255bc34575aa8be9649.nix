{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { demos = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "notmuch"; version = "0.3.2"; };
      license = "GPL-3.0-or-later";
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        libs = [
          (pkgs."notmuch" or (errorHandler.sysDepError "notmuch"))
          (pkgs."talloc" or (errorHandler.sysDepError "talloc"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
      exes = {
        "hs-notmuch-files" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."notmuch" or (errorHandler.buildDepError "notmuch"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "hs-notmuch-dbinfo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."notmuch" or (errorHandler.buildDepError "notmuch"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "hs-notmuch-tag-message" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."notmuch" or (errorHandler.buildDepError "notmuch"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "hs-notmuch-tag-count" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."notmuch" or (errorHandler.buildDepError "notmuch"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "hs-notmuch-tag-set" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."notmuch" or (errorHandler.buildDepError "notmuch"))
          ];
          buildable = if !flags.demos then false else true;
        };
        "hs-notmuch-index-file" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."notmuch" or (errorHandler.buildDepError "notmuch"))
          ];
          buildable = if !flags.demos then false else true;
        };
      };
    };
  }