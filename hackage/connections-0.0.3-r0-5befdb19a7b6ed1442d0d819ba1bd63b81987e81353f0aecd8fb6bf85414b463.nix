{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "connections"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chris.mckinlay@gmail.com";
      author = "Chris McKinlay";
      homepage = "https://github.com/cmk/connections";
      url = "";
      synopsis = "Partial orders, Galois connections, and lattices.";
      description = "A library for numerical conversions using Galois connections.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."lawz" or ((hsPkgs.pkgs-errors).buildDepError "lawz"))
          (hsPkgs."rings" or ((hsPkgs.pkgs-errors).buildDepError "rings"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."semigroupoids" or ((hsPkgs.pkgs-errors).buildDepError "semigroupoids"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."connections" or ((hsPkgs.pkgs-errors).buildDepError "connections"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."rings" or ((hsPkgs.pkgs-errors).buildDepError "rings"))
            (hsPkgs."lawz" or ((hsPkgs.pkgs-errors).buildDepError "lawz"))
            ];
          buildable = true;
          };
        };
      };
    }