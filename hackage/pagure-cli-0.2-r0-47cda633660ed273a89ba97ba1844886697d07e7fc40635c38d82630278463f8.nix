{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { microlens = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "pagure-cli"; version = "0.2"; };
      license = "GPL-2.0-only";
      copyright = "2019 Jens Petersen";
      maintainer = "Jens Petersen <juhpetersen@gmail.com>";
      author = "Jens Petersen <juhpetersen@gmail.com>";
      homepage = "https://github.com/juhp/pagure-cli";
      url = "";
      synopsis = "Pagure client";
      description = "A commandline Pagure client for querying projects and users.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pagure" = {
          depends = ([
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."simple-cmd-args" or ((hsPkgs.pkgs-errors).buildDepError "simple-cmd-args"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ] ++ (if flags.microlens
            then [
              (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
              (hsPkgs."microlens-aeson" or ((hsPkgs.pkgs-errors).buildDepError "microlens-aeson"))
              ]
            else [
              (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
              (hsPkgs."lens-aeson" or ((hsPkgs.pkgs-errors).buildDepError "lens-aeson"))
              ])) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"));
          buildable = true;
          };
        };
      };
    }