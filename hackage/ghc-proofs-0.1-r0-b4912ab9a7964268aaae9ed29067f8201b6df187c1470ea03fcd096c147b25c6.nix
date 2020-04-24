{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ghc-proofs"; version = "0.1"; };
      license = "MIT";
      copyright = "2017 Joachim Breitner";
      maintainer = "mail@joachim-breitner.de";
      author = "Joachim Breitner";
      homepage = "https://github.com/nomeata/ghc-proofs";
      url = "";
      synopsis = "GHC plugin to prove program equations by simplification";
      description = "Often when writing Haskel code, one would like to prove things about the code.\n\nA good example is writing an 'Applicative' or 'Monad'\ninstance: there are equation that should hold, and\nchecking them manually is tedious.\n\nWouldn’t it be nice if the compiler could check them for\nus? With this plugin, he can! (At least in certain simple\ncases – for everything else, you have to use a more\ndedicated solution.)\n\nSee the documentation in \"GHC.Proof\" or the project\nwebpage for more examples and more information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
          ];
        buildable = true;
        };
      tests = {
        "successors" = {
          depends = [
            (hsPkgs."ghc-proofs" or ((hsPkgs.pkgs-errors).buildDepError "ghc-proofs"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        "hlint" = {
          depends = [
            (hsPkgs."ghc-proofs" or ((hsPkgs.pkgs-errors).buildDepError "ghc-proofs"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }