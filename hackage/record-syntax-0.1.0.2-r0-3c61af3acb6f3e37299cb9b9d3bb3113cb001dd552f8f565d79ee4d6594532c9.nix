{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { doctest = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "record-syntax"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/record-syntax";
      url = "";
      synopsis = "A library for parsing and processing the Haskell syntax sprinkled with anonymous records";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."record" or ((hsPkgs.pkgs-errors).buildDepError "record"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."conversion" or ((hsPkgs.pkgs-errors).buildDepError "conversion"))
          (hsPkgs."conversion-text" or ((hsPkgs.pkgs-errors).buildDepError "conversion-text"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."base-prelude" or ((hsPkgs.pkgs-errors).buildDepError "base-prelude"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."base-prelude" or ((hsPkgs.pkgs-errors).buildDepError "base-prelude"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if !flags.doctest then false else true;
          };
        "hspec" = {
          depends = [
            (hsPkgs."record" or ((hsPkgs.pkgs-errors).buildDepError "record"))
            (hsPkgs."record-syntax" or ((hsPkgs.pkgs-errors).buildDepError "record-syntax"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."base-prelude" or ((hsPkgs.pkgs-errors).buildDepError "base-prelude"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "demo" = {
          depends = [
            (hsPkgs."record" or ((hsPkgs.pkgs-errors).buildDepError "record"))
            (hsPkgs."record-syntax" or ((hsPkgs.pkgs-errors).buildDepError "record-syntax"))
            (hsPkgs."conversion" or ((hsPkgs.pkgs-errors).buildDepError "conversion"))
            (hsPkgs."conversion-text" or ((hsPkgs.pkgs-errors).buildDepError "conversion-text"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."base-prelude" or ((hsPkgs.pkgs-errors).buildDepError "base-prelude"))
            ];
          buildable = true;
          };
        };
      };
    }