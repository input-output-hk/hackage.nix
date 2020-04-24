{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "hsforce"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Makoto Tajitsu";
      maintainer = "makoto_tajitsu@hotmail.co.jp";
      author = "Makoto Tajitsu";
      homepage = "https://github.com/tzmfreedom/hsforce#readme";
      url = "";
      synopsis = "Salesforce API Client";
      description = "This package provides bindings to Salesforce API <https://github.com/githubuser/hsforce#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."fast-tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "fast-tagsoup"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
          (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."uri-encode" or ((hsPkgs.pkgs-errors).buildDepError "uri-encode"))
          ];
        buildable = true;
        };
      tests = {
        "hsforce-test" = {
          depends = [
            (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."fast-tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "fast-tagsoup"))
            (hsPkgs."hsforce" or ((hsPkgs.pkgs-errors).buildDepError "hsforce"))
            (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
            (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
            (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
            (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."uri-encode" or ((hsPkgs.pkgs-errors).buildDepError "uri-encode"))
            ];
          buildable = true;
          };
        };
      };
    }