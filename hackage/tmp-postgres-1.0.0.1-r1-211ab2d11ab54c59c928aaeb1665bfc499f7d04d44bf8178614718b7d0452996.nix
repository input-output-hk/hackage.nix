{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tmp-postgres"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017-2019 Jonathan Fischoff";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/jfischoff/tmp-postgres#readme";
      url = "";
      synopsis = "Start and stop a temporary postgres";
      description = "@tmp-postgres@ provides functions creating a temporary @postgres@ instance.\n\nBy default it will create a temporary directory for the data,\na random port for listening and a temporary directory for a UNIX\ndomain socket.\n\nHere is an example using the expection safe 'with' function:\n\n>  with \$ \\db -> bracket (connectPostgreSQL (toConnectionString db)) close \$ \\conn ->\n>   execute_ conn \"CREATE TABLE foo (id int)\"\n\nMacOS and Linux are support. Windows is not.\n\nRequires PostgreSQL 9.3+\n\nWARNING!!\nUbuntu's PostgreSQL installation does not put @initdb@ on the @PATH@. We need to add it manually. The necessary binaries are in the @\\/usr\\/lib\\/postgresql\\/VERSION\\/bin\\/@ directory, and should be added to the @PATH@\n\n> echo \"export PATH=\$PATH:/usr/lib/postgresql/VERSION/bin/\" >> /home/ubuntu/.bashrc\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
          (hsPkgs."postgres-options" or ((hsPkgs.pkgs-errors).buildDepError "postgres-options"))
          (hsPkgs."port-utils" or ((hsPkgs.pkgs-errors).buildDepError "port-utils"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."generic-monoid" or ((hsPkgs.pkgs-errors).buildDepError "generic-monoid"))
          (hsPkgs."postgresql-simple-opts" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple-opts"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."postgresql-libpq" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-libpq"))
            (hsPkgs."tmp-postgres" or ((hsPkgs.pkgs-errors).buildDepError "tmp-postgres"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."hspec-discover" or ((hsPkgs.pkgs-errors).buildDepError "hspec-discover"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."postgresql-simple-opts" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple-opts"))
            (hsPkgs."postgres-options" or ((hsPkgs.pkgs-errors).buildDepError "postgres-options"))
            ];
          buildable = true;
          };
        };
      };
    }