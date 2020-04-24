{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hamsql"; version = "0.7.0.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2014-2016 Michael Herold et al.";
      maintainer = "Michael Herold <quabla@hemio.de>";
      author = "Michael Herold <quabla@hemio.de>";
      homepage = "https://git.hemio.de/hemio/hamsql";
      url = "";
      synopsis = "HamSql";
      description = "Interpreter for SQL-structure definitions in Yaml (YamSql)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."file-embed" or ((hsPkgs.pkgs-errors).buildDepError "file-embed"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."frontmatter" or ((hsPkgs.pkgs-errors).buildDepError "frontmatter"))
          (hsPkgs."groom" or ((hsPkgs.pkgs-errors).buildDepError "groom"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."pandoc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc"))
          (hsPkgs."postgresql-simple" or ((hsPkgs.pkgs-errors).buildDepError "postgresql-simple"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
          ];
        buildable = true;
        };
      exes = {
        "hamsql" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hamsql" or ((hsPkgs.pkgs-errors).buildDepError "hamsql"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hamsql-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hamsql" or ((hsPkgs.pkgs-errors).buildDepError "hamsql"))
            ];
          buildable = true;
          };
        };
      };
    }