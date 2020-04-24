{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sparql-protocol"; version = "1.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2017 Ariel David Moya Sequeira";
      maintainer = "ardamose123@gmail.com";
      author = "Ariel David Moya Sequeira";
      homepage = "https://github.com/ardamose123/sparql-protocol";
      url = "";
      synopsis = "An SPARQL 1.1 Protocol client library.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."wreq" or ((hsPkgs.pkgs-errors).buildDepError "wreq"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          ];
        buildable = true;
        };
      tests = {
        "sparql-protocol-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sparql-protocol" or ((hsPkgs.pkgs-errors).buildDepError "sparql-protocol"))
            ];
          buildable = true;
          };
        };
      };
    }