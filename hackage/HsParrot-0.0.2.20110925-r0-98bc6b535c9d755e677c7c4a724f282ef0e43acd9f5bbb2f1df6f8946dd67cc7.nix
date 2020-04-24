{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "HsParrot"; version = "0.0.2.20110925"; };
      license = "BSD-3-Clause";
      copyright = "Audrey Tang, 2008";
      maintainer = "audreyt@audreyt.org";
      author = "Audrey Tang";
      homepage = "";
      url = "";
      synopsis = "Haskell integration with Parrot virtual machine";
      description = "Haskell integration with Parrot virtual machine";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."HsSyck" or ((hsPkgs.pkgs-errors).buildDepError "HsSyck"))
          (hsPkgs."pugs-DrIFT" or ((hsPkgs.pkgs-errors).buildDepError "pugs-DrIFT"))
          ];
        buildable = true;
        };
      };
    }