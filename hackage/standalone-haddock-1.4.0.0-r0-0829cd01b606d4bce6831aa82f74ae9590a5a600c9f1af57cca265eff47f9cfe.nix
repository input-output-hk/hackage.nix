{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "standalone-haddock"; version = "1.4.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Karl Voelker <standalone-haddock@karlv.net>";
      author = "Roman Cheplyaka";
      homepage = "https://documentup.com/ktvoelker/standalone-haddock";
      url = "";
      synopsis = "Generate standalone haddock documentation for a set of packages";
      description = "standalone-haddock generates standalone haddock Haskell documentation.\n\nWhen you simply run `cabal haddock`, the resulting HTML documentation contains\nhyperlinks to other packages on your system. As a result, you cannot publish it\non the internet (well, you can, but the links will be broken).\n\nstandalone-haddock takes several packages for which you want to publish\ndocumentation. It generates documentation for them with proper links:\n\n* links to identifiers inside this package set are relative\n\n* links to identifiers from external packages lead to Hackage\n\nThus the resulting directory with HTML files is relocatable and publishable.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "standalone-haddock" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }