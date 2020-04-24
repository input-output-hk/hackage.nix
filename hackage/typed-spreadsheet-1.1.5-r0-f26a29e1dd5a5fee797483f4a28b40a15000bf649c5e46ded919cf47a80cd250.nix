{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8.0.2";
      identifier = { name = "typed-spreadsheet"; version = "1.1.5"; };
      license = "BSD-3-Clause";
      copyright = "2015 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Typed and composable spreadsheets";
      description = "This library provides a typed and composable API for building spreadsheets.\nThis differs from traditional spreadsheets in a few important ways:\n\n* you specify the relationship between inputs and outputs at compile time,\nnot runtime, so that the relationship can be type-checked\n\n* inputs of different types have different controls; for example, a `Bool`\ninput creates a checkbox and a `Double` input creates a spin button\n\n* you can only output a single value; you simulate multiple outputs by\nemitting a tuple of values\n\nSee the \"Typed.Spreadsheet\" module for full examples with code and pictures";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."diagrams-cairo" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-cairo"))
          (hsPkgs."diagrams-gtk" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-gtk"))
          (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
          (hsPkgs."foldl" or ((hsPkgs.pkgs-errors).buildDepError "foldl"))
          (hsPkgs."gtk" or ((hsPkgs.pkgs-errors).buildDepError "gtk"))
          (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Cocoa" or ((hsPkgs.pkgs-errors).sysDepError "Cocoa"));
        buildable = true;
        };
      exes = {
        "typed-spreadsheet-example-text" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."typed-spreadsheet" or ((hsPkgs.pkgs-errors).buildDepError "typed-spreadsheet"))
            ];
          frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Cocoa" or ((hsPkgs.pkgs-errors).sysDepError "Cocoa"));
          buildable = true;
          };
        "typed-spreadsheet-example-cell" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."typed-spreadsheet" or ((hsPkgs.pkgs-errors).buildDepError "typed-spreadsheet"))
            ];
          frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Cocoa" or ((hsPkgs.pkgs-errors).sysDepError "Cocoa"));
          buildable = true;
          };
        "typed-spreadsheet-example-graphics" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
            (hsPkgs."typed-spreadsheet" or ((hsPkgs.pkgs-errors).buildDepError "typed-spreadsheet"))
            ];
          frameworks = (pkgs.lib).optional (system.isOsx) (pkgs."Cocoa" or ((hsPkgs.pkgs-errors).sysDepError "Cocoa"));
          buildable = true;
          };
        };
      };
    }