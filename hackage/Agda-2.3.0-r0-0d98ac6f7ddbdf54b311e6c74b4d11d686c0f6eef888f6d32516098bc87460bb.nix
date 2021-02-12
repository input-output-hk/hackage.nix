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
    flags = { use-locale = true; epic = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "Agda"; version = "2.3.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Ulf Norell <ulfn@chalmers.se>";
      author = "Ulf Norell, Nils Anders Danielsson, Catarina Coquand, Makoto Takeyama, Andreas Abel, Darin Morrison...";
      homepage = "http://wiki.portal.chalmers.se/agda/";
      url = "";
      synopsis = "A dependently typed functional programming language and proof assistant";
      description = "Agda is a dependently typed functional programming language: It has\ninductive families, which are similar to Haskell's GADTs, but they\ncan be indexed by values and not just types. It also has\nparameterised modules, mixfix operators, Unicode characters, and an\ninteractive Emacs interface (the type checker can assist in the\ndevelopment of your code).\n\nAgda is also a proof assistant: It is an interactive system for\nwriting and checking proofs. Agda is based on intuitionistic type\ntheory, a foundational system for constructive mathematics developed\nby the Swedish logician Per Martin-L&#xf6;f. It has many\nsimilarities with other proof assistants based on dependent types,\nsuch as Coq, Epigram and NuPRL.\n\nNote that if you want to use the command-line program (agda), then\nyou should also install the Agda-executable package. The Agda\npackage includes an Emacs mode for Agda, but you need to set up the\nEmacs mode yourself (for instance by running @agda-mode setup@; see\nthe README).\n\nNote also that this library does not follow the package versioning\npolicy, because the library is only intended to be used by the Emacs\nmode and the Agda-executable package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ] ++ (if flags.use-locale
          then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            ])) ++ (pkgs.lib).optional (flags.epic) (hsPkgs."epic" or (errorHandler.buildDepError "epic"));
        build-tools = [
          (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
          (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
          ];
        buildable = true;
        };
      exes = {
        "agda-mode" = {
          depends = [
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ] ++ (if flags.use-locale
            then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
              ]);
          buildable = true;
          };
        };
      };
    }