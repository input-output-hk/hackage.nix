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
    flags = { in-ghc-tree = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "haddock"; version = "2.23.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Simon Marlow, David Waern";
      maintainer = "Alec Theriault <alec.theriault@gmail.com>, Alex Biehl <alexbiehl@gmail.com>, Simon Hengel <sol@typeful.net>, Mateusz Kowalczyk <fuuzetsu@fuuzetsu.co.uk>";
      author = "Simon Marlow, David Waern";
      homepage = "http://www.haskell.org/haddock/";
      url = "";
      synopsis = "A documentation-generation tool for Haskell libraries";
      description = "This is Haddock, a tool for automatically generating documentation\nfrom annotated Haskell source code. It is primary intended for documenting\nlibrary interfaces, but it should be useful for any kind of Haskell code.\n\nHaddock lets you write documentation annotations next to the definitions of\nfunctions and types in the source code, in a syntax that is easy on the eye\nwhen writing the source code (no heavyweight mark-up).\n\nHaddock understands Haskell's module system, so you can structure your code\nhowever you like without worrying that internal structure will be exposed in\nthe generated documentation. For example, it is common to implement a library\nin several modules, but define the external API by having a single module\nwhich re-exports parts of these implementation modules. Using Haddock, you can\nstill write documentation annotations next to the actual definitions of the\nfunctions and types in the library, but the documentation annotations from the\nimplementation will be propagated to the external API when the documentation is\ngenerated. Abstract types and classes are handled correctly. In fact, even\nwithout any documentation annotations, Haddock can generate useful documentation\nfrom your source code.\n\n<<https://cdn.rawgit.com/haskell/haddock/ghc-8.8/doc/cheatsheet/haddocks.svg>>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haddock" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ] ++ (if flags.in-ghc-tree
            then [
              (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
              (hsPkgs."array" or (errorHandler.buildDepError "array"))
              (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
              (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"))
              (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
              (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
              (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
              (hsPkgs."text" or (errorHandler.buildDepError "text"))
              (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
              ]
            else [
              (hsPkgs."haddock-api" or (errorHandler.buildDepError "haddock-api"))
              ]);
          buildable = true;
          };
        };
      tests = {
        "html-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haddock-test" or (errorHandler.buildDepError "haddock-test"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.haddock.components.exes.haddock or (pkgs.buildPackages.haddock or (errorHandler.buildToolDepError "haddock:haddock")))
            ];
          buildable = true;
          };
        "hypsrc-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haddock-test" or (errorHandler.buildDepError "haddock-test"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.haddock.components.exes.haddock or (pkgs.buildPackages.haddock or (errorHandler.buildToolDepError "haddock:haddock")))
            ];
          buildable = true;
          };
        "latex-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haddock-test" or (errorHandler.buildDepError "haddock-test"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.haddock.components.exes.haddock or (pkgs.buildPackages.haddock or (errorHandler.buildToolDepError "haddock:haddock")))
            ];
          buildable = true;
          };
        "hoogle-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haddock-test" or (errorHandler.buildDepError "haddock-test"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.haddock.components.exes.haddock or (pkgs.buildPackages.haddock or (errorHandler.buildToolDepError "haddock:haddock")))
            ];
          buildable = true;
          };
        };
      };
    }