{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yaya-hedgehog"; version = "0.1.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "2017 Greg Pfeil";
      maintainer = "greg@technomadic.org";
      author = "Greg Pfeil";
      homepage = "https://github.com/sellout/yaya#readme";
      url = "";
      synopsis = "Hedgehog testing support for the Yaya recursion scheme\nlibrary.";
      description = "If you use Yaya in your own code and have tests written\nusing Hedgehog, then this library will help you with\ngenerating trees, verifying type class instances, etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deriving-compat" or ((hsPkgs.pkgs-errors).buildDepError "deriving-compat"))
          (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
          (hsPkgs."yaya" or ((hsPkgs.pkgs-errors).buildDepError "yaya"))
          ];
        buildable = true;
        };
      };
    }