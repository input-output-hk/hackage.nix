{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "machines-amazonka"; version = "0.4.1"; };
      license = "GPL-3.0-only";
      copyright = "©2017 Evan Cofsky";
      maintainer = "evan@theunixman.com";
      author = "Evan Cofsky";
      homepage = "";
      url = "";
      synopsis = "Machine transducers for Amazonka calls.";
      description = "This provides several modules for managing AWS\nresources using the Machines library. It supports\nrequest modifiers, arbitrary filters, and\npaginated responses.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."amazonka" or ((hsPkgs.pkgs-errors).buildDepError "amazonka"))
          (hsPkgs."amazonka-core" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-core"))
          (hsPkgs."amazonka-ec2" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-ec2"))
          (hsPkgs."amazonka-s3" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-s3"))
          (hsPkgs."amazonka-sts" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-sts"))
          (hsPkgs."lifted-async" or ((hsPkgs.pkgs-errors).buildDepError "lifted-async"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."concurrent-machines" or ((hsPkgs.pkgs-errors).buildDepError "concurrent-machines"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."focus" or ((hsPkgs.pkgs-errors).buildDepError "focus"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."liblawless" or ((hsPkgs.pkgs-errors).buildDepError "liblawless"))
          (hsPkgs."list-t" or ((hsPkgs.pkgs-errors).buildDepError "list-t"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."stm-containers" or ((hsPkgs.pkgs-errors).buildDepError "stm-containers"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }