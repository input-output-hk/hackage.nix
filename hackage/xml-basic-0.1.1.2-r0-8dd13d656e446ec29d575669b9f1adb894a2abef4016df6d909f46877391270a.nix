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
      specVersion = "1.6";
      identifier = { name = "xml-basic"; version = "0.1.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/XML-Basic";
      url = "";
      synopsis = "Basics for XML/HTML representation and processing";
      description = "We provide basic data types for XML representation,\nlike names, attributes, entities.\nYes we try hard to get type safe XML handling out of Haskell 98.\nWe also provide information about exceptional HTML tags,\nlike self-closing tags.\nThis package provides common functionality\nthat is both needed in list (tagsoup-ht) and tree (wraxml) representations of XML.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
          (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ] ++ (if compiler.isJhc && true
            then [
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."applicative" or (errorHandler.buildDepError "applicative"))
              ]
            else [
              (hsPkgs."special-functors" or (errorHandler.buildDepError "special-functors"))
              ]));
        buildable = true;
        };
      };
    }