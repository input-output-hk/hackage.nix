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
      specVersion = "1.2";
      identifier = { name = "dbjava"; version = "1.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "carliros.g@gmail.com";
      author = "Carlos Gomez";
      homepage = "http://devel.comunidadhaskell.org/dbjava/";
      url = "";
      synopsis = "Decompiler Bytecode Java";
      description = "A serializer and deserializer of Jvm classfile format.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."uulib" or (errorHandler.buildDepError "uulib"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
        ];
        buildable = true;
      };
      exes = {
        "dbjava" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."uulib" or (errorHandler.buildDepError "uulib"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          ];
          buildable = true;
        };
      };
    };
  }