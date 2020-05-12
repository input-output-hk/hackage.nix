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
    flags = { demos = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "Frames"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014-2015 Anthony Cowley";
      maintainer = "acowley@gmail.com";
      author = "Anthony Cowley";
      homepage = "";
      url = "";
      synopsis = "Data frames For working with tabular data files";
      description = "User-friendly, type safe, runtime efficient tooling for\nworking with tabular data deserialized from\ncomma-separated values (CSV) files. The type of\neach row of data is inferred from data, which can\nthen be streamed from disk, or worked with in\nmemory.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."readable" or (errorHandler.buildDepError "readable"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          ];
        buildable = true;
        };
      exes = {
        "getdata" = {
          depends = (pkgs.lib).optionals (flags.demos) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."zip-archive" or (errorHandler.buildDepError "zip-archive"))
            ];
          buildable = if !flags.demos then false else true;
          };
        "plot" = {
          depends = (pkgs.lib).optionals (flags.demos) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Frames" or (errorHandler.buildDepError "Frames"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
            (hsPkgs."Chart-diagrams" or (errorHandler.buildDepError "Chart-diagrams"))
            (hsPkgs."diagrams-rasterific" or (errorHandler.buildDepError "diagrams-rasterific"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."readable" or (errorHandler.buildDepError "readable"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            ];
          buildable = if !flags.demos then false else true;
          };
        "plot2" = {
          depends = (pkgs.lib).optionals (flags.demos) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Frames" or (errorHandler.buildDepError "Frames"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
            (hsPkgs."Chart-diagrams" or (errorHandler.buildDepError "Chart-diagrams"))
            (hsPkgs."diagrams-rasterific" or (errorHandler.buildDepError "diagrams-rasterific"))
            (hsPkgs."diagrams-lib" or (errorHandler.buildDepError "diagrams-lib"))
            (hsPkgs."readable" or (errorHandler.buildDepError "readable"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
            ];
          buildable = if !flags.demos then false else true;
          };
        "demo" = {
          depends = (pkgs.lib).optionals (flags.demos) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."Frames" or (errorHandler.buildDepError "Frames"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."readable" or (errorHandler.buildDepError "readable"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            ];
          buildable = if !flags.demos then false else true;
          };
        "tutorial" = {
          depends = (pkgs.lib).optionals (flags.demos) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Frames" or (errorHandler.buildDepError "Frames"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."readable" or (errorHandler.buildDepError "readable"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            ];
          buildable = if !flags.demos then false else true;
          };
        "benchdemo" = {
          depends = (pkgs.lib).optionals (flags.demos) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Frames" or (errorHandler.buildDepError "Frames"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            ];
          buildable = if !flags.demos then false else true;
          };
        "missing" = {
          depends = (pkgs.lib).optionals (flags.demos) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Frames" or (errorHandler.buildDepError "Frames"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
            ];
          buildable = if !flags.demos then false else true;
          };
        "kata04" = {
          depends = (pkgs.lib).optionals (flags.demos) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Frames" or (errorHandler.buildDepError "Frames"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."readable" or (errorHandler.buildDepError "readable"))
            ];
          buildable = if !flags.demos then false else true;
          };
        };
      benchmarks = {
        "insurance" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."Frames" or (errorHandler.buildDepError "Frames"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            ];
          buildable = true;
          };
        };
      };
    }