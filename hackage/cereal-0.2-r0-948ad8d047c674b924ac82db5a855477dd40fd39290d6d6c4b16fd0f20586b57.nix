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
    flags = { split-base = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "cereal"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Trevor Elliott <trevor@galois.com>";
      author = "Lennart Kolmodin <kolmodin@dtek.chalmers.se>, Galois Inc.";
      homepage = "";
      url = "";
      synopsis = "A binary serialization library";
      description = "A binary serialization library, similar to binary, that introduces an isolate\nprimitive for parser isolation, and replaces the asynchronous errors with a\nuser-handleable Either type.  Similar to binary in performance, but uses a\nstrict ByteString instead of a lazy ByteString, thus restricting it to\noperating on finite inputs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ (if flags.split-base
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