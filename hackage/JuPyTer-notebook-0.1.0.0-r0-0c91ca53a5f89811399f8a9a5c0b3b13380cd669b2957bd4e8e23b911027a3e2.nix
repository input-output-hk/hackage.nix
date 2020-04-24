{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "JuPyTer-notebook"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "migamake@migamake.com";
      author = "Michal J. Gajda";
      homepage = "http://github.com/mgajda/ipynb";
      url = "";
      synopsis = "JuPyTer notebook parser";
      description = "JuPyTer also called IPython notebook.\n\nIt is cross-language interactive data science platform\nthat allows for interactive editing of code and visualizing its results.\n\nThis library allows to directly parse `.ipynb` files, and process them.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."json-autotype" or ((hsPkgs.pkgs-errors).buildDepError "json-autotype"))
          ];
        buildable = true;
        };
      exes = {
        "jupyter-extract" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."json-autotype" or ((hsPkgs.pkgs-errors).buildDepError "json-autotype"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."JuPyTer-notebook" or ((hsPkgs.pkgs-errors).buildDepError "JuPyTer-notebook"))
            ];
          buildable = true;
          };
        };
      };
    }