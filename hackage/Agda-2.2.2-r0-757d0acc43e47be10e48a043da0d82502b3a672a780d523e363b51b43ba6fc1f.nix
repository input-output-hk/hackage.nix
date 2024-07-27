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
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Agda"; version = "2.2.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Ulf Norell <ulfn@chalmers.se>";
      author = "Ulf Norell, Catarina Coquand, Makoto Takeyama, Nils Anders Danielsson, Andreas Abel, ...";
      homepage = "http://wiki.portal.chalmers.se/agda/";
      url = "";
      synopsis = "A dependently typed functional programming language and proof assistant";
      description = "Agda is a dependently typed functional programming language: It has\ninductive families, which are like Haskell's GADTs, but they can be\nindexed by values and not just types. It also has parameterised\nmodules, mixfix operators, Unicode characters, and an interactive\nEmacs interface (the type checker can assist in the development of\nyour code).\n\nAgda is also a proof assistant: It is an interactive system for\nwriting and checking proofs. Agda is based on intuitionistic type\ntheory, a foundational system for constructive mathematics developed\nby the Swedish logician Per Martin-Löf. It has many similarities\nwith other proof assistants based on dependent types, such as Coq,\nEpigram and NuPRL.\n\nNote that if you want to use the command-line program (agda), then\nyou should also install the Agda-executable package. This package\nincludes an Emacs mode for Agda, but you need to set up the Emacs\nmode yourself (see the README).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
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
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        build-tools = [
          (hsPkgs.pkgsBuildBuild.happy.components.exes.happy or (pkgs.pkgsBuildBuild.happy or (errorHandler.buildToolDepError "happy:happy")))
          (hsPkgs.pkgsBuildBuild.alex.components.exes.alex or (pkgs.pkgsBuildBuild.alex or (errorHandler.buildToolDepError "alex:alex")))
        ];
        buildable = true;
      };
      exes = {
        "agda-mode" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
          buildable = true;
        };
      };
    };
  }