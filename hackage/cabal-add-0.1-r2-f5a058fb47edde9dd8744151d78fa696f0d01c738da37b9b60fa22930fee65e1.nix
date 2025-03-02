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
    flags = { cabal-syntax = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "cabal-add"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrew.lelechenko@gmail.com";
      author = "Bodigrim";
      homepage = "";
      url = "";
      synopsis = "Extend Cabal build-depends from the command line";
      description = "Extend Cabal @build-depends@ from the command line.\nIt works on any sectioned Cabal file,\nsupports stanzas and conditional blocks,\nand preserves original formatting.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ] ++ [
          (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
        ];
        buildable = true;
      };
      exes = {
        "cabal-add" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cabal-add" or (errorHandler.buildDepError "cabal-add"))
            (hsPkgs."cabal-install-parsers" or (errorHandler.buildDepError "cabal-install-parsers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ] ++ (if flags.cabal-syntax
            then [
              (hsPkgs."Cabal-syntax" or (errorHandler.buildDepError "Cabal-syntax"))
            ]
            else [ (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal")) ]);
          buildable = true;
        };
      };
      tests = {
        "cabal-add-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."string-qq" or (errorHandler.buildDepError "string-qq"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.cabal-add.components.exes.cabal-add or (pkgs.pkgsBuildBuild.cabal-add or (errorHandler.buildToolDepError "cabal-add:cabal-add")))
          ];
          buildable = true;
        };
      };
    };
  }