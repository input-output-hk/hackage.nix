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
      identifier = { name = "keyvaluehash"; version = "0.3.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Eyal Lotem";
      maintainer = "eyal.lotem@gmail.com";
      author = "Eyal Lotem";
      homepage = "";
      url = "";
      synopsis = "Pure Haskell key/value store implementation";
      description = "A simple bytestring key/value store implemented\nin terms of hash table over a file.\nIt cannot yet grow/shrink the hash table as\nneeded, nor does it free old unused (key,value)\npair storage.\nMostly useful for applications that need not\nworry about the size of their persistent store.\nReduces dependency hell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
          (hsPkgs."mmap" or (errorHandler.buildDepError "mmap"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."storable-record" or (errorHandler.buildDepError "storable-record"))
        ];
        buildable = true;
      };
    };
  }