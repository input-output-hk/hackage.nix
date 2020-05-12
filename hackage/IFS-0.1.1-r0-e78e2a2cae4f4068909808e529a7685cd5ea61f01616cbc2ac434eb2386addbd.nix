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
      identifier = { name = "IFS"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007, alpha";
      maintainer = "misc@NOSPAMalpheccar.org";
      author = "alpheccar";
      homepage = "http://www.alpheccar.org";
      url = "";
      synopsis = "Iterated Function System generation for Haskell";
      description = "Library to describe IFS and generate PPM pictures from the descriptions ";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = { "IFS" = { buildable = true; }; };
      };
    }