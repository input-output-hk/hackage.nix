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
      identifier = { name = "binary-strict"; version = "0.4.8.4"; };
      license = "BSD-3-Clause";
      copyright = "Dominic Steinitz, Lennart Kolmodin";
      maintainer = "Dominic Steinitz <dominic@steinitz.org>";
      author = "Lennart Kolmodin <kolmodin@dtek.chalmers.se>";
      homepage = "";
      url = "";
      synopsis = "Binary deserialisation using strict ByteStrings";
      description = "This is a strict version of the Get monad from the binary\npackage. It's pretty much just a copy and paste job\nfrom the original source code. The binary team are\ncurrently unsure about their future plans\nw.r.t. strictness, so this is just a stop gap\nmeasure. See\n<http://www.haskell.org/haskellwiki/DealingWithBinaryData>\nfor documentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ];
        buildable = true;
      };
    };
  }