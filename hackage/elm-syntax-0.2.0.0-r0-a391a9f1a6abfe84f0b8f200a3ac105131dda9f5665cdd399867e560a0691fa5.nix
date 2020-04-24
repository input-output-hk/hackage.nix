{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "elm-syntax"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Olle Fredriksson";
      maintainer = "fredriksson.olle@gmail.com";
      author = "Olle Fredriksson";
      homepage = "https://github.com/folq/elm-syntax#readme";
      url = "";
      synopsis = "Elm syntax and pretty-printing";
      description = "Please see the README on GitHub at <https://github.com/folq/elm-syntax#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bound" or ((hsPkgs.pkgs-errors).buildDepError "bound"))
          (hsPkgs."deriving-compat" or ((hsPkgs.pkgs-errors).buildDepError "deriving-compat"))
          (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
          (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      tests = {
        "elm-syntax-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bound" or ((hsPkgs.pkgs-errors).buildDepError "bound"))
            (hsPkgs."deriving-compat" or ((hsPkgs.pkgs-errors).buildDepError "deriving-compat"))
            (hsPkgs."elm-syntax" or ((hsPkgs.pkgs-errors).buildDepError "elm-syntax"))
            (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }