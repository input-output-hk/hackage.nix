{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fields-json"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Scrive AB";
      maintainer = "Mariusz Rak <mariusz@scrive.com>";
      author = "Scrive AB";
      homepage = "https://github.com/scrive/fields-json";
      url = "";
      synopsis = "Abusing monadic syntax JSON objects generation.";
      description = "Generation of big, complex JSON objects with 'Text.JSON' is painful.\nAnd autoderivation is not always possible.\nCheck documentation of 'Text.JSON.Gen' for more info.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }