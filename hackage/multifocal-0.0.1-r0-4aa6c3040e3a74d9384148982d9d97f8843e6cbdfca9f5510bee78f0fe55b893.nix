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
      specVersion = "1.4";
      identifier = { name = "multifocal"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hugo Pacheco <hpacheco@di.uminho.pt>";
      author = "Hugo Pacheco <hpacheco@di.uminho.pt>, Alcino Cunha <alcino@di.uminho.pt>";
      homepage = "";
      url = "";
      synopsis = "Bidirectional Two-level Transformation of XML Schemas";
      description = "Library that implements a two-level transformation (<http://dx.doi.org/10.1007/978-3-540-69611-7_19>) for creating bidirectional views of XML Schemas based on bidirectional lenses. It supports the specialization of generic queries as two-level transformation steps and the optimization of the generated lens data transformations.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."pointless-haskell" or (errorHandler.buildDepError "pointless-haskell"))
          (hsPkgs."pointless-lenses" or (errorHandler.buildDepError "pointless-lenses"))
          (hsPkgs."pointless-rewrite" or (errorHandler.buildDepError "pointless-rewrite"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."hxt-xpath" or (errorHandler.buildDepError "hxt-xpath"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
        ];
        buildable = true;
      };
      exes = {
        "multifocal" = {
          depends = [
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pointless-haskell" or (errorHandler.buildDepError "pointless-haskell"))
            (hsPkgs."pointless-lenses" or (errorHandler.buildDepError "pointless-lenses"))
            (hsPkgs."pointless-rewrite" or (errorHandler.buildDepError "pointless-rewrite"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."hxt-xpath" or (errorHandler.buildDepError "hxt-xpath"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          ];
          buildable = true;
        };
      };
    };
  }