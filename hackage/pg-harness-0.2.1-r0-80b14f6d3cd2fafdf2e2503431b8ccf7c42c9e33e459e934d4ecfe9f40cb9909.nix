{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pg-harness"; version = "0.2.1"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright (c) 2014, 2015 Bardur Arantsson";
      maintainer = "bardur@scientician.net";
      author = "Bardur Arantsson";
      homepage = "https://github.com/BardurArantsson/pg-harness";
      url = "";
      synopsis = "REST service and library for creating/consuming temporary PostgreSQL databases";
      description = "__This package has been SUPERCEDED and is OBSOLETE.__\n\nSee <http://hackage.haskell.org/package/pg-harness-server pg-harness-server>\nand <http://hackage.haskell.org/package/pg-harness-client pg-harness-client>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          ];
        buildable = true;
        };
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