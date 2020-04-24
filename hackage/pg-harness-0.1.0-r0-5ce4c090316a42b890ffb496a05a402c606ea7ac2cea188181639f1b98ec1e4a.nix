{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pg-harness"; version = "0.1.0"; };
      license = "LicenseRef-AGPL-3.0";
      copyright = "Copyright (c) 2014 Bardur Arantsson";
      maintainer = "spam@scientician.net";
      author = "Bardur Arantsson";
      homepage = "";
      url = "";
      synopsis = "REST service for creating temporary PostgreSQL databases";
      description = "This is a REST service for conveniently creating temporary PostgreSQL\ndatabases. It is intended for use from tests.\n\nSimply install, update the configuration INI file to\nsuit your setup, and run as a system service (e.g.\nvia systemd, upstart or similar) -- see the @SETUP.txt@\nfile for details on what is required of the database\nsetup.\n\nOnce the service is running you can do a HTTP POST\nto it to create a temporary database. For example,\n\n> \$ curl -d '' http://localhost:8900\n> pg-harness-test:pg-harness-pass@db:5432/temp_ba36rk6rqvs92wbofk55sz5k3pcl0u74x\n\nThe response indicates that the temporary database \"@temp_ba36rk6rqvs92wbofk55sz5k3pcl0u74x@\"\nhas been created on the database server \"@db@\" (port 5432) and made available\nto the user \"@pg-harness-test@\" using the password \"@pg-harness-pass@\".\n\nThe database will automatically be destroyed after a configurable duration,\nthough any temporary databases that have not been destroyed when the service\nis stopped will stay around.\n\n__NOTE__: No attempt has been made to prevent DoS attacks, so you should __NOT__\nrun this on any network facing the public Internet. It is only meant for\ndevelopment LANs which are firewalled off.";
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