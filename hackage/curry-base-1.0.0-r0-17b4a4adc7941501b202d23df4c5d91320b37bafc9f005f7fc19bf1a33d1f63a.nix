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
    flags = { broken-directory = false; old-time = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "curry-base"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fte@informatik.uni-kiel.de";
      author = "Wolfgang Lux, Martin Engelke, Bernd Braßel, Holger Siegel,\nBjörn Peemöller, Finn Teegen";
      homepage = "http://curry-language.org";
      url = "";
      synopsis = "Functions for manipulating Curry programs";
      description = "This package serves as a foundation for Curry compilers.\nIt defines the intermediate language formats FlatCurry.\nAdditionally, it provides functionality for the smooth\nintegration of compiler frontends and backends.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).lt "7.4") [
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          ]) ++ (if flags.broken-directory
          then [
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ]
          else if flags.old-time
            then [
              (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              ]
            else [
              (hsPkgs."time" or (errorHandler.buildDepError "time"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              ]);
        buildable = true;
        };
      tests = {
        "test-base" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."curry-base" or (errorHandler.buildDepError "curry-base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }