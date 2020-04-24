{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { fast = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "pwstore-cli"; version = "0.4"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "robert@rycee.net";
      author = "Robert Helgesson";
      homepage = "http://hub.darcs.net/rycee/pwstore-cli";
      url = "";
      synopsis = "Command line interface for the pwstore library";
      description = "This program provides a command line interface for Peter Scott's\npwstore library.  Specifically, it is possible to generate,\nvalidate, and strengthen passwords hashed in the pwstore format.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "pwstore" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            ] ++ (if flags.fast
            then [
              (hsPkgs."pwstore-fast" or ((hsPkgs.pkgs-errors).buildDepError "pwstore-fast"))
              ]
            else [
              (hsPkgs."pwstore-purehaskell" or ((hsPkgs.pkgs-errors).buildDepError "pwstore-purehaskell"))
              ]);
          buildable = true;
          };
        };
      tests = {
        "test-pwstore-cli" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."pwstore-fast" or ((hsPkgs.pkgs-errors).buildDepError "pwstore-fast"))
            ];
          buildable = true;
          };
        };
      };
    }