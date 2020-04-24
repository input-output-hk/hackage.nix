{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { use-network-uri = true; use-old-time = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "hackage-repo-tool"; version = "0.1.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2015 Well-Typed LLP";
      maintainer = "cabal-devel@haskell.org";
      author = "Edsko de Vries";
      homepage = "https://github.com/haskell/hackage-security";
      url = "";
      synopsis = "Manage secure file-based package repositories";
      description = "This utility can be used to manage secure file-based package\nrepositories (creating [TUF](https://theupdateframework.github.io/)\nmetadata as well as a Hackage index tarball) which can be used by\nclients such as [cabal-install](http://hackage.haskell.org/package/cabal-install).\nCurrently it also provides various lower level utilities for creating\nand signing TUF files.\n\nThis is part of the [Hackage Security](https://github.com/haskell/hackage-security#readme)\ninfrastructure.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hackage-repo-tool" = {
          depends = (([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."tar" or ((hsPkgs.pkgs-errors).buildDepError "tar"))
            (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
            (hsPkgs."hackage-security" or ((hsPkgs.pkgs-errors).buildDepError "hackage-security"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))) ++ (if flags.use-old-time
            then [
              (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
              (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
              ]
            else [
              (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
              ])) ++ (if flags.use-network-uri
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