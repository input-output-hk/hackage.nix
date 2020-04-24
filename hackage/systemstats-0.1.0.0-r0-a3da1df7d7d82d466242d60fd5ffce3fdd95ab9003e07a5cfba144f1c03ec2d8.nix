{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "systemstats"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Savanni D'Gerinel";
      maintainer = "savanni@savannidgerinel.com";
      author = "Savanni D'Gerinel";
      homepage = "https://github.com/githubuser/systemlog#readme";
      url = "";
      synopsis = "An application that regularly logs system stats for later analysis";
      description = "An application that regularly logs system stats for later analysis";
      buildType = "Simple";
      };
    components = {
      exes = {
        "systemstats" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."micrologger" or ((hsPkgs.pkgs-errors).buildDepError "micrologger"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."statgrab" or ((hsPkgs.pkgs-errors).buildDepError "statgrab"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."text-format" or ((hsPkgs.pkgs-errors).buildDepError "text-format"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }