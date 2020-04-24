{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "pdf-slave"; version = "1.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Anton Gushcha";
      maintainer = "ncrashed@gmail.com";
      author = "Anton Gushcha";
      homepage = "https://github.com/NCrashed/pdf-slave#readme";
      url = "";
      synopsis = "Tool to generate PDF from haskintex templates and YAML input";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."haskintex" or ((hsPkgs.pkgs-errors).buildDepError "haskintex"))
          (hsPkgs."HaTeX" or ((hsPkgs.pkgs-errors).buildDepError "HaTeX"))
          (hsPkgs."pdf-slave-template" or ((hsPkgs.pkgs-errors).buildDepError "pdf-slave-template"))
          (hsPkgs."shelly" or ((hsPkgs.pkgs-errors).buildDepError "shelly"))
          (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
          ];
        buildable = true;
        };
      exes = {
        "pdf-slave" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."pdf-slave" or ((hsPkgs.pkgs-errors).buildDepError "pdf-slave"))
            (hsPkgs."pdf-slave-template" or ((hsPkgs.pkgs-errors).buildDepError "pdf-slave-template"))
            (hsPkgs."shelly" or ((hsPkgs.pkgs-errors).buildDepError "shelly"))
            (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }