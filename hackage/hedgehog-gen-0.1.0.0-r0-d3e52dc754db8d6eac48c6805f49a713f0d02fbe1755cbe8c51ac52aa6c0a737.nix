{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "hedgehog-gen"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2020 ByteAlly";
      maintainer = "magesh85@gmail.com";
      author = "Magesh";
      homepage = "https://github.com/byteally/hedgehog-gen";
      url = "";
      synopsis = "Customizable Gen for ADT using Generics";
      description = "Customizable Gen for ADT using Generics with the abilites to do type-based and field-based overrides of Gen.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."typerep-map" or ((hsPkgs.pkgs-errors).buildDepError "typerep-map"))
          ];
        buildable = true;
        };
      };
    }