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
      identifier = { name = "typed-peg"; version = "0.4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "rodrigo.ribeiro@ufop.edu.br";
      author = "Rodrigo Ribeiro";
      homepage = "https://github.com/rodrigogribeiro/typed-peg";
      url = "";
      synopsis = "Type-safe PEG parser combinators";
      description = "A library for building Parsing Expression Grammars parsers\nwith compile-time safety guarantees. A non-terminal reference is a\nkey whose type is the result of the rule it names, so references are\nchecked by the type checker in time linear in the size of the grammar;\nleft recursion, a repetition that cannot consume input, an undefined\nnon-terminal and a duplicate rule are reported when the grammar is\nspliced, naming the rule.\n.\nA quasi-quoter (@PEG.QQ@) allows writing grammars in a concrete\nDSL syntax. Indentation-sensitive parsing is supported natively\nvia @PEG.Indent@.\n.\nParsers run over any @PEG.Stream@ instance: @String@, strict and\nlazy @Text@, and strict and lazy @ByteString@. A character class\nproduces a chunk of the input stream, so matching @[a-z]+@ against\na @Text@ yields a slice rather than a @[Char]@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "typed-peg-examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."typed-peg" or (errorHandler.buildDepError "typed-peg"))
          ];
          buildable = true;
        };
        "typed-peg-analysis" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."typed-peg" or (errorHandler.buildDepError "typed-peg"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "typed-peg-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."typed-peg" or (errorHandler.buildDepError "typed-peg"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }