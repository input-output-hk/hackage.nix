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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "encoding"; version = "0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "h.guenther@tu-bs.de";
      author = "Henning Günther";
      homepage = "http://code.haskell.org/encoding/";
      url = "";
      synopsis = "A library for various character encodings";
      description = "Haskell has excellect handling of unicode, the Char type covers all unicode chars. Unfortunatly, there's no possibility to read or write something to the outer world in an encoding other than ascii due to the lack of support for encodings. This library should help with that.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.splitbase
          then [
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ];
        buildable = true;
        };
      };
    }