{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rings"; version = "0.0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chris.mckinlay@gmail.com";
      author = "Chris McKinlay";
      homepage = "https://github.com/cmk/rings";
      url = "";
      synopsis = "Ring-like objects.";
      description = "Semirings, rings, division rings, and modules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lawz" or ((hsPkgs.pkgs-errors).buildDepError "lawz"))
          (hsPkgs."magmas" or ((hsPkgs.pkgs-errors).buildDepError "magmas"))
          (hsPkgs."adjunctions" or ((hsPkgs.pkgs-errors).buildDepError "adjunctions"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."distributive" or ((hsPkgs.pkgs-errors).buildDepError "distributive"))
          (hsPkgs."semigroupoids" or ((hsPkgs.pkgs-errors).buildDepError "semigroupoids"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."connections" or ((hsPkgs.pkgs-errors).buildDepError "connections"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."property" or ((hsPkgs.pkgs-errors).buildDepError "property"))
            (hsPkgs."rings" or ((hsPkgs.pkgs-errors).buildDepError "rings"))
            ];
          buildable = true;
          };
        };
      };
    }