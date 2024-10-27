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
    flags = { binary = true; parsec = true; attoparsec = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "parsers"; version = "0.12.11"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2010-2013 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/parsers/";
      url = "";
      synopsis = "Parsing combinators";
      description = "This library provides convenient combinators for working with and building parsing combinator libraries.\n\nGiven a few simple instances, e.g. for the class 'Text.Parser.Combinators.Parsing' in \"Text.Parser.Combinators.Parsing\" you\nget access to a large number of canned definitions. Instances exist for the parsers provided by @parsec@,\n@attoparsec@ and base’s \"Text.Read\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-orphans" or (errorHandler.buildDepError "base-orphans"))
          (hsPkgs."charset" or (errorHandler.buildDepError "charset"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ] ++ pkgs.lib.optional (flags.binary) (hsPkgs."binary" or (errorHandler.buildDepError "binary"))) ++ pkgs.lib.optional (flags.parsec) (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))) ++ pkgs.lib.optional (flags.attoparsec) (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
      };
      tests = {
        "quickcheck" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."parsers" or (errorHandler.buildDepError "parsers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
          ] ++ pkgs.lib.optional (flags.parsec) (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))) ++ pkgs.lib.optional (flags.attoparsec) (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"));
          buildable = true;
        };
      };
    };
  }