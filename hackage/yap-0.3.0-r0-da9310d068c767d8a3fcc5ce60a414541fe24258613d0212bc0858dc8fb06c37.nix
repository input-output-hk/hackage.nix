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
      specVersion = "1.18";
      identifier = { name = "yap"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ross Paterson <R.Paterson@city.ac.uk>";
      author = "Ross Paterson <R.Paterson@city.ac.uk>";
      homepage = "";
      url = "";
      synopsis = "yet another prelude - a simplistic refactoring with algebraic\nclasses";
      description = "A simple refactoring of the Prelude numeric classes,\naiming to escape from the restrictive bundling of\noperations in the standard numeric classes, while\npreserving backward compatibility for clients.\nThis is done by adding algebraic classes as superclasses\nof the Haskell 2010 numeric classes, yielding the\nfollowing class hierarchy (grey classes are unchanged):\n\n<<https://raw.githubusercontent.com/RossPaterson/yap/refs/heads/main/images/hierarchy.svg>>\n\n\"Prelude.YAP\" is an almost-compatible replacement\nfor the standard Haskell Prelude, as long as you're\nnot defining instances of the numeric classes (though\ndefaulting will be affected).  When importing it, use\n\n@{-# LANGUAGE RebindableSyntax #-}@\n\nThis will turn off the implicit @Prelude@ import and\nattach various syntax to the new definitions.\n\n\"Data.YAP.Algebra\" contains just the new classes;\nyou'll need to import it if you want access to the\nnew names, including to define instances.\n\nOther modules contain instances for the existing types\n@Complex@ and @Ratio@.\nFurther examples are in the @yap-examples@ package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }