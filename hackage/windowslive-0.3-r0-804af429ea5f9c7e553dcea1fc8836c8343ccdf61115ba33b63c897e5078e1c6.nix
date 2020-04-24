{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "windowslive"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "joshhoyt@gmail.com";
      author = "Josh Hoyt";
      homepage = "http://patch-tag.com/repo/windowslive";
      url = "";
      synopsis = "Implements Windows Live Web Authentication and\nDelegated Authentication";
      description = "Implements functions for initiating and processing\nWeb Authentication requests, as well as Delegated\nAuthentication. See\n<http://msdn.microsoft.com/en-us/library/bb404787.aspx>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Crypto" or ((hsPkgs.pkgs-errors).buildDepError "Crypto"))
          (hsPkgs."dataenc" or ((hsPkgs.pkgs-errors).buildDepError "dataenc"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."urlencoded" or ((hsPkgs.pkgs-errors).buildDepError "urlencoded"))
          ];
        buildable = true;
        };
      exes = {
        "test" = {
          depends = (pkgs.lib).optional (flags.test) (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"));
          buildable = if flags.test then true else false;
          };
        };
      };
    }