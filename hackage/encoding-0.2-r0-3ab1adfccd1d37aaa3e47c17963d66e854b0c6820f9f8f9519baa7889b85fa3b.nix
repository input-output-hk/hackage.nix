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
      specVersion = "1.0";
      identifier = { name = "encoding"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "h.guenther@tu-bs.de";
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }