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
      specVersion = "2.2";
      identifier = { name = "parsnip"; version = "0"; };
      license = "(BSD-2-Clause OR Apache-2.0)";
      copyright = "Copyright (c) 2019-2021 Edward Kmett";
      maintainer = "Edward Kmett <ekmett@gmail.com>";
      author = "Edward Kmett";
      homepage = "https://github.com/ekmett/codex/tree/master/parsnip#readme";
      url = "";
      synopsis = "A fast, minimal parser";
      description = "A fast, minimal parser.\n\n@parsnip@ parses null-terminated input strings with an absolute minimum of\ninternal state. It copies the input to a c string and works its way through\nhand-over-hand with just an @Addr#@ as the internal state.\n\nIt uses @reflection@-like tricks to lift the input 'ByteString' into a\nconstraint that is then passed to just the combinators that need access\nto it to compute position, snip out slices of the original, or ask the\nnumber of bytes remaining, but none of the monadic combinators nor simple\n'satisfy' or 'eof' predicates need access to this information.\n\nBecause of the null-termination, we can't assume that we can handle binary\ninputs, but this works well for text-based source languages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
        ];
        buildable = true;
      };
    };
  }