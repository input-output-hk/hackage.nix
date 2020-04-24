{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "homplexity"; version = "0.4.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright by Michal J. Gajda '2015";
      maintainer = "mjgajda@gmail.com";
      author = "Michal J. Gajda";
      homepage = "https://github.com/mgajda/homplexity";
      url = "";
      synopsis = "Haskell code quality tool";
      description = "Homplexity aims to measure code complexity,\nwarning about fragments that might have higher defect probability\ndue to bad coding style on-the-large:\n\n* too large functions\n\n* too deeply nested conditions\n\n* too few comments";
      buildType = "Simple";
      };
    components = {
      exes = {
        "homplexity" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hflags" or ((hsPkgs.pkgs-errors).buildDepError "hflags"))
            (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."cpphs" or ((hsPkgs.pkgs-errors).buildDepError "cpphs"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or ((hsPkgs.pkgs-errors).buildToolDepError "happy")))
            ];
          buildable = true;
          };
        };
      tests = {
        "Comments" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
            ];
          buildable = true;
          };
        };
      };
    }