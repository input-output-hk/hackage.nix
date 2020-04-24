{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "bson-mapping"; version = "0.1.3"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Francesco Mazzoli <f@mazzo.li>";
      author = "Francesco Mazzoli <f@mazzo.li>";
      homepage = "";
      url = "";
      synopsis = "Mapping between BSON and algebraic data types.";
      description = "This module defines a Bson class to convert data types to Bson and to convert Bson documents back to datatypes, along with template haskell functions to easily derive the instance.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."th-lift" or ((hsPkgs.pkgs-errors).buildDepError "th-lift"))
          (hsPkgs."bson" or ((hsPkgs.pkgs-errors).buildDepError "bson"))
          (hsPkgs."compact-string-fix" or ((hsPkgs.pkgs-errors).buildDepError "compact-string-fix"))
          ];
        buildable = true;
        };
      };
    }