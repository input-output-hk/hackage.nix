{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0.1";
      identifier = { name = "type-ord-spine-cereal"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nicolas Frisby <nicolas.frisby@gmail.com>";
      author = "Nicolas Frisby <nicolas.frisby@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Generic type-level comparison of types";
      description = "Generic type-level comparison of @type-spine@- and\n@type-cereal@-enabled types. See the @yoko@ package's \\\"Data.Yoko.HCompos\\\"\nand \\\"Data.Yoko.TH\\\" modules for a (rather large) use case.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."type-spine" or ((hsPkgs.pkgs-errors).buildDepError "type-spine"))
          (hsPkgs."type-cereal" or ((hsPkgs.pkgs-errors).buildDepError "type-cereal"))
          (hsPkgs."type-ord" or ((hsPkgs.pkgs-errors).buildDepError "type-ord"))
          ];
        buildable = true;
        };
      };
    }