{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "boolean-like"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Benedict Aas";
      maintainer = "x@shou.io";
      author = "Benedict Aas";
      homepage = "http://github.com/Shou/boolean-like";
      url = "";
      synopsis = "Logical combinatory operations dealing with datatypes\nrepresenting booleans by their constructors.";
      description = "Boolean-like logical combinatory operations under typeclasses\nAndlike, Orlike, and Xorlike and a typeclass Falsifier for datatypes with\nunary false-like values (e.g. Nothing, []).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }