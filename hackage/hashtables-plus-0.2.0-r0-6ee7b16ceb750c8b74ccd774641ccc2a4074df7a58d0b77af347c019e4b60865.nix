{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hashtables-plus"; version = "0.2.0"; };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hashtables-plus";
      url = "";
      synopsis = "Extensions for a \"hashtables\" library";
      description = "A dome API over the \\\"hashtables\\\" library,\nwhich provides 'null' and 'size' functions of /O(1)/ complexity and\nadvanced data structures: multimap, set, \"StableName\"-based structures.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."hashtables" or ((hsPkgs.pkgs-errors).buildDepError "hashtables"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."loch-th" or ((hsPkgs.pkgs-errors).buildDepError "loch-th"))
          (hsPkgs."placeholders" or ((hsPkgs.pkgs-errors).buildDepError "placeholders"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."hashtables-plus" or ((hsPkgs.pkgs-errors).buildDepError "hashtables-plus"))
            (hsPkgs."criterion-plus" or ((hsPkgs.pkgs-errors).buildDepError "criterion-plus"))
            (hsPkgs."hashtables" or ((hsPkgs.pkgs-errors).buildDepError "hashtables"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."string-conversions" or ((hsPkgs.pkgs-errors).buildDepError "string-conversions"))
            (hsPkgs."th-printf" or ((hsPkgs.pkgs-errors).buildDepError "th-printf"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."mwc-random" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."loch-th" or ((hsPkgs.pkgs-errors).buildDepError "loch-th"))
            (hsPkgs."placeholders" or ((hsPkgs.pkgs-errors).buildDepError "placeholders"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }