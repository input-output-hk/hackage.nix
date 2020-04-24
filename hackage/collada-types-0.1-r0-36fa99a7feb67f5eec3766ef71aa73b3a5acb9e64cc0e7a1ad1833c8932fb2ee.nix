{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "collada-types"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tillmann.Vogt@rwth-aachen.de";
      author = "Tillmann Vogt";
      homepage = "";
      url = "";
      synopsis = "data exchange between graphic applications";
      description = "Collada is the standard graphics format for data exchange between 3d Tools. As well as the file format also its represenation as an algebraic data type could be used to make libraries more composable. Please propose changes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."enumerable" or ((hsPkgs.pkgs-errors).buildDepError "enumerable"))
          (hsPkgs."tuple-gen" or ((hsPkgs.pkgs-errors).buildDepError "tuple-gen"))
          ];
        buildable = true;
        };
      };
    }