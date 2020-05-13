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
    flags = { bytestring-in-base = true; split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "binary"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lennart Kolmodin, Don Stewart <dons@galois.com>";
      author = "Lennart Kolmodin <kolmodin@dtek.chalmers.se>";
      homepage = "http://www.cse.unsw.edu.au/~dons/binary.html";
      url = "";
      synopsis = "Binary serialization for Haskell values using lazy ByteStrings";
      description = "Efficient, pure binary serialisation using lazy ByteStrings.\nHaskell values may be encoded to and form binary formats,\nwritten to disk as binary, or sent over the network.\nSerialisation speeds of over 1 G\\/sec have been observed,\nso this library should be suitable for high performance\nscenarios.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (if flags.bytestring-in-base
          then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ]) ++ (if flags.split-base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      };
    }