{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "fields-json"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mariusz@scrive.com";
      author = "Scrive";
      homepage = "";
      url = "";
      synopsis = "Abusing monadic syntax JSON objects generation.";
      description = "Generation of big, complex JSON objects with Text.JSON is painful. And autoderivation is not always posible.\nCheck haddock of Fields module for more info.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }