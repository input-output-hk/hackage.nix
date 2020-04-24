{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "list-t-html-parser"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/list-t-html-parser";
      url = "";
      synopsis = "Streaming HTML parser";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."list-t" or ((hsPkgs.pkgs-errors).buildDepError "list-t"))
          (hsPkgs."html-tokenizer" or ((hsPkgs.pkgs-errors).buildDepError "html-tokenizer"))
          (hsPkgs."html-entities" or ((hsPkgs.pkgs-errors).buildDepError "html-entities"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."mtl-prelude" or ((hsPkgs.pkgs-errors).buildDepError "mtl-prelude"))
          (hsPkgs."base-prelude" or ((hsPkgs.pkgs-errors).buildDepError "base-prelude"))
          ];
        buildable = true;
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."list-t-html-parser" or ((hsPkgs.pkgs-errors).buildDepError "list-t-html-parser"))
            (hsPkgs."list-t-attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "list-t-attoparsec"))
            (hsPkgs."list-t-text" or ((hsPkgs.pkgs-errors).buildDepError "list-t-text"))
            (hsPkgs."html-tokenizer" or ((hsPkgs.pkgs-errors).buildDepError "html-tokenizer"))
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