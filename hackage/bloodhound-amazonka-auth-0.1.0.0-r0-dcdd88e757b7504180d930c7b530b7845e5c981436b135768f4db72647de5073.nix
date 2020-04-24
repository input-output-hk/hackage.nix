{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { lib-werror = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "bloodhound-amazonka-auth"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 Michael Xavier";
      maintainer = "michael@michaelxavier.net";
      author = "Michael Xavier";
      homepage = "http://github.com/MichaelXavier/bloodhound-amazonka-auth#readme";
      url = "";
      synopsis = "Adds convenient Amazon ElasticSearch Service authentication to Bloodhound.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bloodhound" or ((hsPkgs.pkgs-errors).buildDepError "bloodhound"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."amazonka-core" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-core"))
          (hsPkgs."amazonka-elasticsearch" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-elasticsearch"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."uri-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "uri-bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bloodhound-amazonka-auth" or ((hsPkgs.pkgs-errors).buildDepError "bloodhound-amazonka-auth"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."amazonka-core" or ((hsPkgs.pkgs-errors).buildDepError "amazonka-core"))
            (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }