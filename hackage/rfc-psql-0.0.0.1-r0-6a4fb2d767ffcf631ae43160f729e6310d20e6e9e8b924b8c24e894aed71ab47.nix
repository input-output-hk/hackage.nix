{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { production = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "rfc-psql"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "smokejumperit+rfc@gmail.com";
      author = "Robert Fischer";
      homepage = "https://github.com/RobertFischer/rfc#readme";
      url = "";
      synopsis = "The PostgreSQL extensions from the Robert Fischer Commons.";
      description = "Provides best-of-breed support for PostgreSQL, currently based on @postgresql-typed@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."postgresql-typed" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-typed"))
          (hsPkgs."resource-pool" or ((hsPkgs.pkgs-errors).buildDepError "resource-pool"))
          (hsPkgs."rfc-env" or ((hsPkgs.pkgs-errors).buildDepError "rfc-env"))
          (hsPkgs."rfc-prelude" or ((hsPkgs.pkgs-errors).buildDepError "rfc-prelude"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }