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
    flags = { test = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "Grempa"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Olle Fredriksson";
      maintainer = "fredriksson.olle@gmail.com";
      author = "Olle Fredriksson";
      homepage = "";
      url = "";
      synopsis = "Embedded grammar DSL and LALR parser generator";
      description = "A library for expressing programming language grammars in a form similar\nto BNF, which is extended with the semantic actions to take when\na production has been parsed. The grammars are typed and are to be be used\nwith the LALR(1) parser generator, also part of the library, which can\ngenerate a parser for the language either at compile time using Template\nHaskell, producing fast parsers with no initial runtime overhead, or\ndynamically, which has the initial overhead of generating the parser, but\ncan be used for example when the grammar depends on an input.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
        ] ++ pkgs.lib.optional (flags.test) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"));
        buildable = true;
      };
    };
  }