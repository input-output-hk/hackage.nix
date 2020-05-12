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
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "bytestring-csv"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Don Stewart 2008";
      maintainer = "dons@galois.com";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/bytestring-csv";
      url = "";
      synopsis = "Parse CSV formatted data efficiently";
      description = "Parse CSV formatted data efficiently";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.small_base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }