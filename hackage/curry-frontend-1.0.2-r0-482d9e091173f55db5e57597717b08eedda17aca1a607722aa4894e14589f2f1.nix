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
    flags = { network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "curry-frontend"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fte@informatik.uni-kiel.de";
      author = "Wolfgang Lux, Martin Engelke, Bernd Brassel, Holger Siegel,\nBjoern Peemoeller, Finn Teegen";
      homepage = "http://curry-language.org";
      url = "";
      synopsis = "Compile the functional logic language Curry to several\nintermediate formats";
      description = "The Curry front end consists of the executable program\n\"curry-frontend\".\nIt is used by various backends to compile Curry programs to\nan intermediate representation.\nThe code is a stripped-down version of an early version of\nthe Muenster Curry Compiler\n(<http://danae.uni-muenster.de/curry/>)\nwhich has been extended to produce different intermediate\nrepresentations.\nFor further information, please check\n<http://curry-language.org>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."curry-base" or (errorHandler.buildDepError "curry-base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."set-extra" or (errorHandler.buildDepError "set-extra"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (if flags.network-uri
          then [
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            ]
          else [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]);
        buildable = true;
        };
      exes = {
        "curry-frontend" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."curry-base" or (errorHandler.buildDepError "curry-base"))
            (hsPkgs."curry-frontend" or (errorHandler.buildDepError "curry-frontend"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."set-extra" or (errorHandler.buildDepError "set-extra"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ] ++ (if flags.network-uri
            then [
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ]);
          buildable = true;
          };
        };
      tests = {
        "test-frontend" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."curry-base" or (errorHandler.buildDepError "curry-base"))
            (hsPkgs."curry-frontend" or (errorHandler.buildDepError "curry-frontend"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }