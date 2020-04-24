{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { devel = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hsqml-datamodel-vinyl"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "marcin.jan.mrotek@gmail.com";
      author = "Marcin Mrotek";
      homepage = "https://github.com/marcinmrotek/hsqml-datamodel-vinyl";
      url = "";
      synopsis = "HsQML DataModel instances for Vinyl Rec.";
      description = "HsQML DataModel instances for Vinyl Rec. Requires the field labels to be Typeable.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hsqml-datamodel" or ((hsPkgs.pkgs-errors).buildDepError "hsqml-datamodel"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."type-list" or ((hsPkgs.pkgs-errors).buildDepError "type-list"))
          (hsPkgs."vinyl" or ((hsPkgs.pkgs-errors).buildDepError "vinyl"))
          ];
        buildable = true;
        };
      };
    }