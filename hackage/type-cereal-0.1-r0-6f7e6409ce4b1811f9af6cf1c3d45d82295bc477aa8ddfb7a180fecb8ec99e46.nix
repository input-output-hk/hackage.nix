{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0.1";
      identifier = { name = "type-cereal"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nicolas Frisby <nicolas.frisby@gmail.com>";
      author = "Nicolas Frisby <nicolas.frisby@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Type-level serialization of type constructors";
      description = "Any @type-spine@-enabled type constructor can be converted to a\nunique @type-digits@ type-level numeral.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."data-hash" or ((hsPkgs.pkgs-errors).buildDepError "data-hash"))
          (hsPkgs."type-spine" or ((hsPkgs.pkgs-errors).buildDepError "type-spine"))
          (hsPkgs."type-digits" or ((hsPkgs.pkgs-errors).buildDepError "type-digits"))
          ];
        buildable = true;
        };
      };
    }