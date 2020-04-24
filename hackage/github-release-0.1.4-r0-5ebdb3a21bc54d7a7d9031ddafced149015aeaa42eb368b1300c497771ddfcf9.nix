{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "github-release"; version = "0.1.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "https://github.com/tfausak/github-release#readme";
      url = "";
      synopsis = "Upload files to GitHub releases.";
      description = "GitHub Release is a command-line utility for uploading files to GitHub releases.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-client-tls" or ((hsPkgs.pkgs-errors).buildDepError "http-client-tls"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."mime-types" or ((hsPkgs.pkgs-errors).buildDepError "mime-types"))
          (hsPkgs."optparse-generic" or ((hsPkgs.pkgs-errors).buildDepError "optparse-generic"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."uri-templater" or ((hsPkgs.pkgs-errors).buildDepError "uri-templater"))
          ];
        buildable = true;
        };
      exes = {
        "github-release" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."github-release" or ((hsPkgs.pkgs-errors).buildDepError "github-release"))
            ];
          buildable = true;
          };
        };
      };
    }