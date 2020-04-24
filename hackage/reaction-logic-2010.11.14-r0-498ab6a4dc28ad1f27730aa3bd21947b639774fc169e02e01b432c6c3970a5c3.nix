{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "reaction-logic"; version = "2010.11.14"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010 Paolo Veronelli";
      maintainer = "Paolo Veronelli <paolo.veronelli@gmail.com>";
      author = "";
      homepage = "http://wiki.github.com/paolino/realogic";
      url = "";
      synopsis = "pluggable pure logic serializable reactor";
      description = "A library to help write reaction drivers where a reaction can produce new reactions and events upon receiving an event. This library focuses on logic and serialization.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      exes = {
        "reaction-logic-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }