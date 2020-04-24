{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "concurrent-buffer"; version = "0.1"; };
      license = "MIT";
      copyright = "(c) 2017, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/concurrent-buffer";
      url = "";
      synopsis = "Concurrent expanding buffer";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bug" or ((hsPkgs.pkgs-errors).buildDepError "bug"))
          (hsPkgs."base-prelude" or ((hsPkgs.pkgs-errors).buildDepError "base-prelude"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."concurrent-buffer" or ((hsPkgs.pkgs-errors).buildDepError "concurrent-buffer"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."quickcheck-instances" or ((hsPkgs.pkgs-errors).buildDepError "quickcheck-instances"))
            (hsPkgs."bug" or ((hsPkgs.pkgs-errors).buildDepError "bug"))
            (hsPkgs."rerebase" or ((hsPkgs.pkgs-errors).buildDepError "rerebase"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs."concurrent-buffer" or ((hsPkgs.pkgs-errors).buildDepError "concurrent-buffer"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."bug" or ((hsPkgs.pkgs-errors).buildDepError "bug"))
            (hsPkgs."rerebase" or ((hsPkgs.pkgs-errors).buildDepError "rerebase"))
            ];
          buildable = true;
          };
        };
      };
    }