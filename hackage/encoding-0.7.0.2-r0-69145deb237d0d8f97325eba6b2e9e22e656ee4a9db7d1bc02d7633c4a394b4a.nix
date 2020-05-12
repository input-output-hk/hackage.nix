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
    flags = { splitbase = true; systemencoding = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "encoding"; version = "0.7.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "daniel@wagner-home.com";
      author = "Henning Günther";
      homepage = "http://code.haskell.org/encoding/";
      url = "";
      synopsis = "A library for various character encodings";
      description = "Haskell has excellect handling of unicode, the Char type covers all unicode chars. Unfortunatly, there's no possibility to read or write something to the outer world in an encoding other than ascii due to the lack of support for encodings. This library should help with that.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.10") (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      };
    }