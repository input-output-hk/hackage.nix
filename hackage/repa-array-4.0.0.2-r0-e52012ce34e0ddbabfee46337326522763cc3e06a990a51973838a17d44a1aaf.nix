{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "repa-array"; version = "4.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The Repa Development Team";
      homepage = "http://repa.ouroborus.net";
      url = "";
      synopsis = "Bulk array representations and operators.";
      description = "NOTE: This is an ALPHA version of Repa 4. The API is not yet complete with\nrespect to Repa 3. Some important functions are still missing, and the docs\nmay not be up-to-date.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."double-conversion" or ((hsPkgs.pkgs-errors).buildDepError "double-conversion"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."repa-eval" or ((hsPkgs.pkgs-errors).buildDepError "repa-eval"))
          (hsPkgs."repa-stream" or ((hsPkgs.pkgs-errors).buildDepError "repa-stream"))
          ];
        buildable = true;
        };
      };
    }