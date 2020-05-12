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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "ycextra"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2008, Dmitry Golubovsky and The Yhc Team";
      maintainer = "golubovsky@gmail.com";
      author = "Dmitry Golubovsky";
      homepage = "http://www.haskell.org/haskellwiki/Yhc";
      url = "";
      synopsis = "Additional utilities to work with Yhc Core.";
      description = "Additional utilities for Yhc Core developed as by-products\nof front- and back-ends, also for possible inclusion\nto the Yhc Core package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."yhccore" or (errorHandler.buildDepError "yhccore"))
          (hsPkgs."csv" or (errorHandler.buildDepError "csv"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ]);
        buildable = true;
        };
      };
    }