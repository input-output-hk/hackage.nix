{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gli"; version = "0.0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Mrinmoy Das";
      maintainer = "mrinmoy.das91@gmail.com";
      author = "goromlagche";
      homepage = "https://github.com/goromlagche/gli#readme";
      url = "";
      synopsis = "Tiny cli to fetch PR info from gitlab";
      description = "A cli tool to fetch PR(pull request/merge request) related informations from gitlab. When someone runs this tool from inside a gitlab repository, it will list out open merge requests informations containing url, title, description, author, assignee, whether it has a WIP tag or not, status, branch name and both created_at, updated_at fields";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."friendly-time" or ((hsPkgs.pkgs-errors).buildDepError "friendly-time"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."http-client-tls" or ((hsPkgs.pkgs-errors).buildDepError "http-client-tls"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
          ];
        buildable = true;
        };
      exes = {
        "gli" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gli" or ((hsPkgs.pkgs-errors).buildDepError "gli"))
            ];
          buildable = true;
          };
        };
      tests = {
        "gli-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gli" or ((hsPkgs.pkgs-errors).buildDepError "gli"))
            ];
          buildable = true;
          };
        };
      };
    }