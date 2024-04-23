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
      specVersion = "1.6";
      identifier = { name = "fclabels"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sebastiaan Visser <sfvisser@cs.uu.nl>";
      author = "Sebastiaan Visser, Erik Hesselink";
      homepage = "";
      url = "";
      synopsis = "First class record labels";
      description = "First class labels for records, with combinators, allowing\nselection, modification and update inside (nested) records.\nAlso includes MonadState versions of these, and template\nhaskell generation of the labels.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."monads-fd" or (errorHandler.buildDepError "monads-fd"))
        ];
        buildable = true;
      };
    };
  }