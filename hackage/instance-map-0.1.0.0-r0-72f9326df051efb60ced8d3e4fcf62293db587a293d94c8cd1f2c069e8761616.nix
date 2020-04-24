{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "instance-map"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Richard Warfield";
      maintainer = "richard@litx.io";
      author = "Richard Warfield";
      homepage = "https://github.com/RichardWarfield/instance-map#readme";
      url = "";
      synopsis = "Template haskell utilities for helping with deserialization etc. of existential types";
      description = "instance-map provides Template Haskell functions that help go from serialized values with value-level type witnesses (i.e. TypeRep values) to existential types containing type-level evidence of membership in a type class. It is useful for dealing with serialized values when only membership in a certain class (and not the monomorphic type) is known at the site of deserialization.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "instance-map-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."instance-map" or ((hsPkgs.pkgs-errors).buildDepError "instance-map"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            ];
          buildable = true;
          };
        };
      };
    }