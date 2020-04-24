{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "parsec-pratt"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "kindlangdev@gmail.com";
      author = "Julian Hall";
      homepage = "http://github.com/jh3141/parsec-pratt/";
      url = "";
      synopsis = "Pratt Parser combinator for Parsec";
      description = "A combinator to generate Pratt Parsers (aka Top Down Operator\nPrecedence parsers) for expressions with infix and prefix\noperators.  Integrates with Parsec.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "parsec-pratt-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec-pratt" or ((hsPkgs.pkgs-errors).buildDepError "parsec-pratt"))
            ];
          buildable = true;
          };
        };
      };
    }