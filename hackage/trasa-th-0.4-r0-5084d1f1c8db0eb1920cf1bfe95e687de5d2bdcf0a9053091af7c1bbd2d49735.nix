{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "trasa-th"; version = "0.4"; };
      license = "MIT";
      copyright = "© 2017-2019 Andrew Martin\n© 2017-2019 Kyle McKean";
      maintainer = "Andrew Martin <andrew.thaddeus@gmail.com>\nKyle McKean <mckean.kylej@gmail.com>\nchessai <chessai1996@gmail.com>";
      author = "Andrew Martin\nKyle McKean";
      homepage = "https://github.com/haskell-trasa/trasa";
      url = "";
      synopsis = "Template Haskell to generate trasa routes";
      description = "Trasa routes can sometimes be tedious to write out by hand, so `trasa-th`\noffers some `-XTemplateHaskell`-based help to generate your `Route`\nGADT.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
          (hsPkgs."trasa" or ((hsPkgs.pkgs-errors).buildDepError "trasa"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."trasa" or ((hsPkgs.pkgs-errors).buildDepError "trasa"))
            (hsPkgs."trasa-th" or ((hsPkgs.pkgs-errors).buildDepError "trasa-th"))
            ];
          buildable = true;
          };
        };
      };
    }