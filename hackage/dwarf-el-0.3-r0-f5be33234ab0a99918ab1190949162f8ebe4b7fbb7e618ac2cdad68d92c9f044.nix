{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "dwarf-el"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "Eyal Lotem, Erik Charlebois";
      maintainer = "Eyal Lotem <eyal.lotem@gmail.com>";
      author = "Eyal Lotem, Erik Charlebois";
      homepage = "";
      url = "";
      synopsis = "Parser for DWARF debug format.";
      description = "Parser for DWARF debug format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."text-show" or ((hsPkgs.pkgs-errors).buildDepError "text-show"))
          ];
        buildable = true;
        };
      };
    }