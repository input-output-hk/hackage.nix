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
      specVersion = "1.10";
      identifier = { name = "open-adt"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018 Jordan Woehr";
      maintainer = "Jordan Woehr";
      author = "";
      homepage = "https://github.com/woehr/open-adt";
      url = "";
      synopsis = "Open algebraic data types.";
      description = "This library, built upon row-types, provides types and functions\nfor variants of various functors that all have the same type\napplied to them. This is very similar to, and inspired by,\n<https://github.com/haskus/haskus-utils haskus-utils-variant>.\nAt the time of writing, the compile-time performance of\nhaskus-utils-variant is poor for variants with many fields, which\nshould be improved in this package by using row-types.\n\nThe main types of interest in this package are 'VarF' and\n'OpenADT'. 'VarF' wraps a variant of functors, all over the same\ntype, and provides a functor instance that fmaps over whatever\nthe variant is. 'OpenADT' is the fixed-point type of 'VarF',\nwhich allows for recursive structures to be created.\n\nA convenience function, 'mkVarPattern' from 'Data.OpenADT.TH',\ngenerates patterns that can be used as constructors for variants.\nThe key aspect of these patterns is that they are polymorphic\nin the type of the row, allowing them to be used as constructors\nfor any open algebraic data type that includes a particular\nconstructor.\n\nFor examples, see the 'Data.OpenADT.Tutorial' module.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."recursion-schemes" or (errorHandler.buildDepError "recursion-schemes"))
          (hsPkgs."row-types" or (errorHandler.buildDepError "row-types"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }