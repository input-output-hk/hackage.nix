{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "streaming-postgresql-simple";
        version = "0.1.0.0";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ollie@ocharles.org.uk";
      author = "Ollie Charles";
      homepage = "";
      url = "";
      synopsis = "Stream postgresql-query results using the streaming library";
      description = "This package provides incremental streaming functions for the @postgresql-simple@ library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."postgresql-libpq" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-libpq"))
          (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
          (hsPkgs."streaming" or ((hsPkgs.pkgs-errors).buildDepError "streaming"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }