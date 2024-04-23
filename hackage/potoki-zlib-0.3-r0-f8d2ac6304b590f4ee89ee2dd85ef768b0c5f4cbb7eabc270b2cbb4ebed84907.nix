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
      specVersion = "1.10";
      identifier = { name = "potoki-zlib"; version = "0.3"; };
      license = "MIT";
      copyright = "(c) 2018, Metrix.AI";
      maintainer = "Ilya Zubkov <izubkov.forall@gmail.com>";
      author = "Ilya Zubkov <izubkov.forall@gmail.com>";
      homepage = "https://github.com/nikita-volkov/potoki-zlib";
      url = "";
      synopsis = "Streaming ZLib decompression";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."acquire" or (errorHandler.buildDepError "acquire"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."potoki-core" or (errorHandler.buildDepError "potoki-core"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
        ];
        buildable = true;
      };
    };
  }