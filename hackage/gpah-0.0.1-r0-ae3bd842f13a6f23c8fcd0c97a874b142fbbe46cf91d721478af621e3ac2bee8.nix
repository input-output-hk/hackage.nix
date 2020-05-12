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
      specVersion = "1.8";
      identifier = { name = "gpah"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Nikolaos Bezirgiannis, Johan Jeuring, Sean Leather";
      maintainer = "n.bezirgiannis@students.uu.nl";
      author = "Nikolaos Bezirgiannis, Johan Jeuring, Sean Leather";
      homepage = "";
      url = "";
      synopsis = "Generic Programming Use in Hackage";
      description = "Generic Programming Use in Hackage:";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gpah" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."csv" or (errorHandler.buildDepError "csv"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."uu-parsinglib" or (errorHandler.buildDepError "uu-parsinglib"))
            ];
          buildable = true;
          };
        };
      };
    }