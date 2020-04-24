{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { use-network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hackage-repo-tool"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2015 Well-Typed LLP";
      maintainer = "edsko@well-typed.com";
      author = "Edsko de Vries";
      homepage = "http://github.com/well-typed/hackage-security/";
      url = "";
      synopsis = "Utility to manage secure file-based package repositories";
      description = "This utility can be used to manage secure file-based\nrepositories (creating TUF metadata as well as a Hackage\nindex tarball). Currently it also provides various\nlower level utilities for creating and signing TUF files.\n\nThis is part of the Hackage Security infrastructure.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hackage-repo-tool" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."tar" or ((hsPkgs.pkgs-errors).buildDepError "tar"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
            (hsPkgs."hackage-security" or ((hsPkgs.pkgs-errors).buildDepError "hackage-security"))
            ] ++ (if flags.use-network-uri
            then [
              (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
              (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
              ]
            else [
              (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
              ]);
          buildable = true;
          };
        };
      };
    }