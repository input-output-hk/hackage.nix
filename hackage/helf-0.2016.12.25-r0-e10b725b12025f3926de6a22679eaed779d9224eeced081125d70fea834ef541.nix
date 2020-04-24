{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "helf"; version = "0.2016.12.25"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Andreas Abel <andreas.abel@ifi.lmu.de>";
      author = "Andreas Abel and Nicolai Kraus";
      homepage = "http://www2.tcs.ifi.lmu.de/~abel/projects.html#helf";
      url = "";
      synopsis = "Typechecking terms of the Edinburgh Logical Framework (LF).";
      description = "HELF = Haskell implementation of the Edinburgh Logical Framework\n\nHELF implements only a subset of the Twelf syntax and functionality.\nIt type-checks LF definitions, but does not do type reconstruction.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "helf" = {
          depends = [
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or ((hsPkgs.pkgs-errors).buildToolDepError "happy")))
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or ((hsPkgs.pkgs-errors).buildToolDepError "alex")))
            ];
          buildable = true;
          };
        };
      };
    }