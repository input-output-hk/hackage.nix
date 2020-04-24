{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { strict = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "iso-deriving"; version = "0.0.7"; };
      license = "MIT";
      copyright = "";
      maintainer = "Hans Hoeglund <hans.hoeglund@tweag.io>";
      author = "Hans Hoeglund";
      homepage = "";
      url = "";
      synopsis = "Deriving via arbitrary isomorphisms.";
      description = "The GHC extension DerivingVia allow derivation through a specific morphism:\ncoerce. This library helps generalizing DerivingVia to arbitrary morphisms.\nThis is particularly useful for prototypes and specifications of instances.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          ];
        buildable = true;
        };
      tests = {
        "iso-deriving-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."iso-deriving" or ((hsPkgs.pkgs-errors).buildDepError "iso-deriving"))
            ];
          buildable = true;
          };
        };
      };
    }