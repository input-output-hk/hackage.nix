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
      specVersion = "1.12";
      identifier = { name = "docrecords"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2018 EURL Tweag, NovaDiscovery";
      maintainer = "Yves Parès <yves.pares@tweag.io>";
      author = "";
      homepage = "https://github.com/tweag/porcupine#readme";
      url = "";
      synopsis = "Vinyl-based records with hierarchical field names, default values and documentation";
      description = "Implements the DocRec type, which is a record (in the vinyl sense) where each\nfield has an optional value and a docstring. The names of the fields are\ntype-level lists of Symbols, acting as paths. This makes docrecords\nhierarchical. Addionally, we provide the code to read docrecords from JSON\nfiles and derive CLI parsers to override the records read from\nfiles. docrecords is part of the porcupine ecosystem. See the README at\n<https://github.com/tweag/porcupine#README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }