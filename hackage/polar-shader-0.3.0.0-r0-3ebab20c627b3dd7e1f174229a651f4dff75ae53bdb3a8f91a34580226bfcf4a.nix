{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "polar-shader"; version = "0.3.0.0"; };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2015-2016 David Farrell";
      maintainer = "David Farrell <shokku.ra@gmail.com>";
      author = "David Farrell";
      homepage = "";
      url = "";
      synopsis = "High-level shader compiler framework";
      description = "A compiler framework for a high-level shading language, built for the Polar game Engine.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          ];
        buildable = true;
        };
      tests = {
        "test-polar-shader" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."polar-shader" or ((hsPkgs.pkgs-errors).buildDepError "polar-shader"))
            ];
          buildable = true;
          };
        };
      };
    }