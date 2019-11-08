let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tmp-postgres"; version = "1.2.1.0"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."postgresql-simple" or (buildDepError "postgresql-simple"))
          (hsPkgs."postgres-options" or (buildDepError "postgres-options"))
          (hsPkgs."port-utils" or (buildDepError "port-utils"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."generic-monoid" or (buildDepError "generic-monoid"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."postgresql-libpq" or (buildDepError "postgresql-libpq"))
            (hsPkgs."tmp-postgres" or (buildDepError "tmp-postgres"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."postgresql-simple" or (buildDepError "postgresql-simple"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."postgres-options" or (buildDepError "postgres-options"))
            (hsPkgs."port-utils" or (buildDepError "port-utils"))
            ];
          buildable = true;
          };
        };
      };
    }