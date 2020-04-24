{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hasql-dynamic-statements"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "(c) 2019, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hasql-dynamic-statements";
      url = "";
      synopsis = "Toolkit for constructing Hasql statements dynamically";
      description = "This library introduces into the Hasql ecosystem a new abstraction named Snippet,\nwhich makes it trivial to construct SQL, while injecting values.\nIt is intended to be used when the SQL of your statement depends on the parameters,\nthat you want to pass in.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."hasql" or ((hsPkgs.pkgs-errors).buildDepError "hasql"))
          (hsPkgs."hasql-implicits" or ((hsPkgs.pkgs-errors).buildDepError "hasql-implicits"))
          (hsPkgs."ptr" or ((hsPkgs.pkgs-errors).buildDepError "ptr"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."hasql" or ((hsPkgs.pkgs-errors).buildDepError "hasql"))
            (hsPkgs."hasql-dynamic-statements" or ((hsPkgs.pkgs-errors).buildDepError "hasql-dynamic-statements"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            (hsPkgs."rerebase" or ((hsPkgs.pkgs-errors).buildDepError "rerebase"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }