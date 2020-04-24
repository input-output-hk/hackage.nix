{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "record-preprocessor"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/record-preprocessor";
      url = "";
      synopsis = "Compiler preprocessor introducing a syntactic extension for anonymous records";
      description = "This package provides an executable \"record-preprocessor\",\nwhich can be used as a compilation phase to add support for\nthe Anynonymous Records syntax.\n\nTo get a look at what syntax the preprocessor enables check out\n<http://hackage.haskell.org/package/record-preprocessor-0.1.0.2/src/demo/Main.hs the demo> and\n<http://hackage.haskell.org/package/record-preprocessor-0.1.0.2/src/record-preprocessor.cabal its configuration in the Cabal file>,\nwhich are both bundled with this package.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "record-preprocessor" = {
          depends = [
            (hsPkgs."record-syntax" or ((hsPkgs.pkgs-errors).buildDepError "record-syntax"))
            (hsPkgs."conversion" or ((hsPkgs.pkgs-errors).buildDepError "conversion"))
            (hsPkgs."conversion-text" or ((hsPkgs.pkgs-errors).buildDepError "conversion-text"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
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
            (hsPkgs."basic-lens" or ((hsPkgs.pkgs-errors).buildDepError "basic-lens"))
            ];
          buildable = true;
          };
        };
      };
    }