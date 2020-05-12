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
      specVersion = "0";
      identifier = { name = "binary-strict"; version = "0.2.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Langley <agl@imperialviolet.org>";
      author = "Lennart Kolmodin <kolmodin@dtek.chalmers.se>";
      homepage = "http://darcs.imperialviolet.org/binary-strict";
      url = "";
      synopsis = "Binary deserialisation using strict ByteStrings";
      description = "This is a strict version of the Get monad from the binary\npackage. It's pretty much just a copy and paste job from the\noriginal source code. The binary team are currently unsure\nabout their future plans w.r.t. strictness, so this is just a\nstop gap measure.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }