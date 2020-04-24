{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "optparse-simple"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2015-2017 FP Complete";
      maintainer = "chrisdone@fpcomplete.com";
      author = "FP Complete";
      homepage = "https://github.com/fpco/optparse-simple#readme";
      url = "";
      synopsis = "Simple interface to optparse-applicative";
      description = "Please see the README at <https://www.stackage.org/package/optparse-simple>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."gitrev" or ((hsPkgs.pkgs-errors).buildDepError "gitrev"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."optparse-simple" or ((hsPkgs.pkgs-errors).buildDepError "optparse-simple"))
            ];
          buildable = true;
          };
        };
      };
    }