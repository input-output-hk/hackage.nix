{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "rdioh"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Aditya Bhargava <aditya at wefoundland.com>";
      author = "Aditya Bhargava";
      homepage = "";
      url = "";
      synopsis = "A Haskell wrapper for Rdio's API.";
      description = "This library implements methods for Rdio's API.\nIt supports 2-legged and 3-legged OAuth.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
          (hsPkgs."hoauth" or ((hsPkgs.pkgs-errors).buildDepError "hoauth"))
          (hsPkgs."urlencoded" or ((hsPkgs.pkgs-errors).buildDepError "urlencoded"))
          ];
        buildable = true;
        };
      };
    }