{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pg-harness-server"; version = "0.5.0"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright (c) 2014, 2015 Bardur Arantsson";
      maintainer = "bardur@scientician.net";
      author = "Bardur Arantsson";
      homepage = "https://github.com/BardurArantsson/pg-harness";
      url = "";
      synopsis = "REST service for creating temporary PostgreSQL databases";
      description = "REST service for conveniently creating temporary PostgreSQL databases\nfor use in tests.\n\nSee <https://github.com/BardurArantsson/pg-harness/blob/master/README.md README.md> for\ndetailed usage and setup instructions.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pg-harness" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."ini" or ((hsPkgs.pkgs-errors).buildDepError "ini"))
            (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."scotty" or ((hsPkgs.pkgs-errors).buildDepError "scotty"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }