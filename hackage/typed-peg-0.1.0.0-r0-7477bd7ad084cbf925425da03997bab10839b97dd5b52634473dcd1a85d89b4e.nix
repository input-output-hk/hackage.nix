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
      specVersion = "3.0";
      identifier = { name = "typed-peg"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rodrigo.ribeiro@ufop.edu.br";
      author = "Rodrigo Ribeiro";
      homepage = "https://github.com/rodrigogribeiro/typed-peg";
      url = "";
      synopsis = "Type-safe PEG parser combinators";
      description = "A library for building PEG (Parsing Expression Grammar) parsers\nwith compile-time safety guarantees. Grammar non-terminals are\nindexed by their nullability and FIRST sets at the type level,\nmaking left-recursive grammars a type error.\n.\nA quasi-quoter ('PEG.QQ') allows writing grammars in a concrete\nDSL syntax. Indentation-sensitive parsing is supported natively\nvia 'PEG.Indent'.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "typed-peg-examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."typed-peg" or (errorHandler.buildDepError "typed-peg"))
          ];
          buildable = true;
        };
      };
    };
  }