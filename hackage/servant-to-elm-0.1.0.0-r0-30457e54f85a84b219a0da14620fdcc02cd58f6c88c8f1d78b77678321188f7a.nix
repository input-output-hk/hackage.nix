{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "servant-to-elm"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Olle Fredriksson";
      maintainer = "fredriksson.olle@gmail.com";
      author = "Olle Fredriksson";
      homepage = "https://github.com/folq/servant-to-elm#readme";
      url = "";
      synopsis = "Automatically generate Elm clients for Servant APIs";
      description = "Please see the README on GitHub at <https://github.com/folq/servant-to-elm#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bound" or ((hsPkgs.pkgs-errors).buildDepError "bound"))
          (hsPkgs."elm-syntax" or ((hsPkgs.pkgs-errors).buildDepError "elm-syntax"))
          (hsPkgs."haskell-to-elm" or ((hsPkgs.pkgs-errors).buildDepError "haskell-to-elm"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "user-example" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bound" or ((hsPkgs.pkgs-errors).buildDepError "bound"))
            (hsPkgs."elm-syntax" or ((hsPkgs.pkgs-errors).buildDepError "elm-syntax"))
            (hsPkgs."generics-sop" or ((hsPkgs.pkgs-errors).buildDepError "generics-sop"))
            (hsPkgs."haskell-to-elm" or ((hsPkgs.pkgs-errors).buildDepError "haskell-to-elm"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
            (hsPkgs."servant-to-elm" or ((hsPkgs.pkgs-errors).buildDepError "servant-to-elm"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      tests = {
        "servant-to-elm-test" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bound" or ((hsPkgs.pkgs-errors).buildDepError "bound"))
            (hsPkgs."elm-syntax" or ((hsPkgs.pkgs-errors).buildDepError "elm-syntax"))
            (hsPkgs."haskell-to-elm" or ((hsPkgs.pkgs-errors).buildDepError "haskell-to-elm"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
            (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
            (hsPkgs."servant-to-elm" or ((hsPkgs.pkgs-errors).buildDepError "servant-to-elm"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }