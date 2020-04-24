{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "ditto-lucid"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2012 Jeremy Shaw, SeeReason Partners LLC,\n2019 Zachary Churchill";
      maintainer = "zacharyachurchill@gmail.com";
      author = "Jeremy Shaw, Zachary Churchill";
      homepage = "";
      url = "";
      synopsis = "Add support for using lucid with Ditto";
      description = "Ditto is a library for building and validating forms using applicative functors. This package add support for using ditto with lucid.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lucid" or ((hsPkgs.pkgs-errors).buildDepError "lucid"))
          (hsPkgs."ditto" or ((hsPkgs.pkgs-errors).buildDepError "ditto"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."path-pieces" or ((hsPkgs.pkgs-errors).buildDepError "path-pieces"))
          ];
        buildable = true;
        };
      };
    }