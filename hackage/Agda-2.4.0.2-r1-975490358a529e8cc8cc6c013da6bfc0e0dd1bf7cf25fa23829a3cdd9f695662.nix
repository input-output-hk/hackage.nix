{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { epic = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "Agda"; version = "2.4.0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Ulf Norell <ulfn@chalmers.se>";
      author = "Ulf Norell, Andreas Abel, Nils Anders Danielsson, Makoto Takeyama, Catarina Coquand, with contributions by Stevan Andjelkovic, Marcin Benke, Jean-Philippe Bernardy, James Chapman, Jesper Cockx, Dominique Devriese, Peter Divanski, Fredrik Nordvall Forsberg, Olle Fredriksson, Daniel Gustafsson, Patrik Jansson, Alan Jeffrey, Wolfram Kahl, Fredrik Lindblad, Francesco Mazzoli, Stefan Monnier, Darin Morrison, Guilhem Moulin, Nicolas Pouillard, Andrés Sicard-Ramírez, Andrea Vezzosi and many more.";
      homepage = "http://wiki.portal.chalmers.se/agda/";
      url = "";
      synopsis = "A dependently typed functional programming language and proof assistant";
      description = "Agda is a dependently typed functional programming language: It has\ninductive families, which are similar to Haskell's GADTs, but they\ncan be indexed by values and not just types. It also has\nparameterised modules, mixfix operators, Unicode characters, and an\ninteractive Emacs interface (the type checker can assist in the\ndevelopment of your code).\n\nAgda is also a proof assistant: It is an interactive system for\nwriting and checking proofs. Agda is based on intuitionistic type\ntheory, a foundational system for constructive mathematics developed\nby the Swedish logician Per Martin-L&#xf6;f. It has many\nsimilarities with other proof assistants based on dependent types,\nsuch as Coq, Epigram and NuPRL.\n\nThis package includes both a command-line program (agda) and an\nEmacs mode. If you want to use the Emacs mode you can set it up by\nrunning @agda-mode setup@ (see the README).\n\nNote that the Agda library does not follow the package versioning\npolicy, because it is not intended to be used by third-party\npackages.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."data-hash" or (errorHandler.buildDepError "data-hash"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."geniplate" or (errorHandler.buildDepError "geniplate"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
          (hsPkgs."STMonadTrans" or (errorHandler.buildDepError "STMonadTrans"))
          (hsPkgs."equivalence" or (errorHandler.buildDepError "equivalence"))
          (hsPkgs."boxes" or (errorHandler.buildDepError "boxes"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (pkgs.lib).optional (flags.epic) (hsPkgs."epic" or (errorHandler.buildDepError "epic"))) ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))) ++ (if compiler.isGhc && (compiler.version).lt "7.6"
          then [
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ]
          else [
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ]);
        build-tools = [
          (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
          (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
          ];
        buildable = true;
        };
      exes = {
        "agda" = {
          depends = [
            (hsPkgs."Agda" or (errorHandler.buildDepError "Agda"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "agda-mode" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }