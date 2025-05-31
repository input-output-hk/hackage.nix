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
    flags = { developer = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "attoparsec-isotropic"; version = "0.14.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniil Iaitskov <dyaitskov@gmail.com>";
      author = "Daniil Iaitskov <dyaitskov@gmail.com>";
      homepage = "https://github.com/yaitskov/attoparsec-isotropic";
      url = "";
      synopsis = "right-to-left parser backward compatible with attoparsec";
      description = "A fork of <https://github.com/haskell/attoparsec attoparsec> library\nallows to define omnidirected parsers or parsers consuming input from\nright-to-left. The library is highly backward compabitle with original\ninterface. Idea to do the fork is inspired by the need to parse a CSV\nfile in <https://github.com/yaitskov/RobinHood-pr0fit robin-hood-profit>\nin one go with “constant” memory footprint and rows in reverse\nchronological order.\n\n== Example\n#example#\n\n> {-# LANGUAGE OverloadedStrings #-}\n> {-# LANGUAGE TupleSections #-}\n> import Data.Attoparsec.ByteString\n>\n> test = parseOnly ab \"ab\" == parseBackOnly ba \"ab\"\n>   where\n>     ab = (,) <$> string \"a\" <*> string \"b\"\n>     ba = (,) <$> string \"b\" <*> string \"a\"\n>\n> test2 = parseOnly ab \"ab\" == parseBackOnly ab \"ba\"\n>   where\n>     ab = string \"a\" >*< string \"b\"\n\n== Running parser in reverse incrementally\n#running-parser-in-reverse-incrementally#\n\nSnippet from the CSV parser app:\n\n> consumeFile :: Handle -> (RobinRow -> ProfitM ()) -> ProfitM ()\n> consumeFile h handleRow = do\n>   input <- readBlock h\n>   go Nothing input\n>   where\n>     go !loopDetector input = do\n>       iBlock <- gets (^. #currentBlock)\n>       if iBlock < 0 && input == mempty\n>         then pure ()\n>         else do\n>           parseBackWith (readBlock h) parseRow input >>= \\case\n>             Fail _unconsumed ctx er -> do\n>               erpos <- liftIO $ hTell h\n>               fail $ \"Failed to parse CSV file around \" <> show erpos <> \" byte; due: \"\n>                 <> show er <> \"; context: \" <> show ctx\n>             Partial _ -> fail \"CSV file is partial\"\n>             Done (unconsumed :: ByteString) (rawRow :: [ByteString]) -> do\n>               iBlock' <- gets (^. #currentBlock)\n>               if loopDetector == Just (unconsumed, iBlock')\n>                 then\n>                   fail $ \"Loop detected. Unconsumed input: \" <> show unconsumed\n>                 else do\n>                   trashCodes <- asks (^. #codesToSkip)\n>                   case parseRobinRow trashCodes rawRow of\n>                     Left e -> fail e\n>                     Right row -> do\n>                       forM_ row handleRow\n>                       go (Just (unconsumed, iBlock')) unconsumed";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."haddock-use-refs" or (errorHandler.buildDepError "haddock-use-refs"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."trace-embrace" or (errorHandler.buildDepError "trace-embrace"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."attoparsec-isotropic".components.sublibs.attoparsec-isotropic-internal or (errorHandler.buildDepError "attoparsec-isotropic:attoparsec-isotropic-internal"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.4") (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))) ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0")) [
          (hsPkgs."fail" or (errorHandler.buildDepError "fail"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
        ];
        buildable = true;
      };
      sublibs = {
        "attoparsec-isotropic-internal" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."trace-embrace" or (errorHandler.buildDepError "trace-embrace"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
          buildable = true;
        };
      };
      tests = {
        "attoparsec-isotropic-tests" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."attoparsec-isotropic" or (errorHandler.buildDepError "attoparsec-isotropic"))
            (hsPkgs."attoparsec-isotropic".components.sublibs.attoparsec-isotropic-internal or (errorHandler.buildDepError "attoparsec-isotropic:attoparsec-isotropic-internal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-unicode" or (errorHandler.buildDepError "quickcheck-unicode"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."trace-embrace" or (errorHandler.buildDepError "trace-embrace"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0")) [
            (hsPkgs."fail" or (errorHandler.buildDepError "fail"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "attoparsec-isotropic-benchmarks" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."attoparsec-isotropic" or (errorHandler.buildDepError "attoparsec-isotropic"))
            (hsPkgs."attoparsec-isotropic".components.sublibs.attoparsec-isotropic-internal or (errorHandler.buildDepError "attoparsec-isotropic:attoparsec-isotropic-internal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0")) [
            (hsPkgs."fail" or (errorHandler.buildDepError "fail"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          ];
          buildable = true;
        };
      };
    };
  }