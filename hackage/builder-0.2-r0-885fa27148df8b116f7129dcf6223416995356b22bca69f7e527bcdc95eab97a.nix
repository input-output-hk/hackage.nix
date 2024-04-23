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
      specVersion = "2.2";
      identifier = { name = "builder"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "© 2019 chessai";
      maintainer = "chessai <chessai1996@gmail.com>";
      author = "chessai";
      homepage = "https://github.com/chessai/builder";
      url = "";
      synopsis = "bounded ByteArray builder type";
      description = "A Builder type for ByteArray. Appending these builders\ncan be cheaper than when appending ByteArray values, since\nonly one buffer allocation is performed.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."byte-order" or (errorHandler.buildDepError "byte-order"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."primitive-unaligned" or (errorHandler.buildDepError "primitive-unaligned"))
        ];
        buildable = true;
      };
    };
  }