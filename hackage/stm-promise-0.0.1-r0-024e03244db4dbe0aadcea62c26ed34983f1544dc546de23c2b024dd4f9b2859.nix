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
    flags = { werror = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "stm-promise"; version = "0.0.1"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "Dan Rosén <danr@chalmers.se>";
      author = "Dan Rosén";
      homepage = "http://www.github.com/danr/stm-promise";
      url = "";
      synopsis = "Simple STM Promises for IO computations and external processes";
      description = "Simple STM Promises for IO computations and external processes. Experimental release.\n\nExample with running the theorem prover eprover in parallel. Given this file structure:\n\n> ├── mul-commutative\n> │   ├── induction_x_0.tptp\n> │   ├── induction_x_1.tptp\n> │   ├── induction_x_y_0.tptp\n> │   ├── induction_x_y_1.tptp\n> │   ├── induction_x_y_2.tptp\n> │   ├── induction_x_y_3.tptp\n> │   ├── induction_y_0.tptp\n> │   ├── induction_y_1.tptp\n> │   └── no_induction_0.tptp\n> └── plus-commutative\n>     ├── induction_x_0.tptp\n>     ├── induction_x_1.tptp\n>     ├── induction_x_y_0.tptp\n>     ├── induction_x_y_1.tptp\n>     ├── induction_x_y_2.tptp\n>     ├── induction_x_y_3.tptp\n>     ├── induction_y_0.tptp\n>     ├── induction_y_1.tptp\n>     └── no_induction_0.tptp\n\nWe can capture these different obligations and goals with a `Control.Concurrent.STM.Promise.Tree.Tree`.\n\n> file_tree :: Tree FilePath\n> file_tree = fmap (++ \".tptp\") $ tryAll\n>    [ fmap (\"mul-commutative/\" ++) $ requireAny\n>      [ fmap (\"induction_x_\" ++) $ requireAll $ map Leaf [\"0\",\"1\"]\n>      , fmap (\"induction_y_\" ++) $ requireAll $ map Leaf [\"0\",\"1\"]\n>      , fmap (\"induction_x_y_\" ++) $ requireAll $ map Leaf [\"0\",\"1\",\"2\",\"3\"]\n>      , Leaf \"no_induction_0\"\n>      ]\n>    , fmap (\"plus-commutative/\" ++) $ requireAny\n>      [ fmap (\"induction_x_\" ++) $ requireAll $ map Leaf [\"0\",\"1\"]\n>      , fmap (\"induction_y_\" ++) $ requireAll $ map Leaf [\"0\",\"1\"]\n>      , fmap (\"induction_x_y_\" ++) $ requireAll $ map Leaf [\"0\",\"1\",\"2\",\"3\"]\n>      , Leaf \"no_induction_0\"\n>      ]\n>    ]\n\nA successful invocation either contains @Theorem@ or @Unsatisfiable@.\n\n> success :: ProcessResult -> Bool\n> success r = excode r == ExitSuccess && any (`isInfixOf` stdout r) ok\n>   where\n>     ok = [\"Theorem\",\"Unsatisfiable\"]\n\nMaking a promise for an eprover process:\n\n> eproverPromise :: FilePath -> IO (Promise [(FilePath,Bool)])\n> eproverPromise file = do\n>     let args = [\"-xAuto\",\"-tAuto\",'-':\"-tptp3-format\",\"-s\"]\n>     promise <- processPromise \"eprover\" (file : args) \"\"\n>     let chres :: ProcessResult -> [(FilePath,Bool)]\n>         chres r = [ (file,success r) ]\n>     return $ fmap chres promise\n\nEvaluate this in parallel, with a 1 second timeout for each invocation:\n\n> main :: IO ()\n> main = do\n>     promise_tree <- mapM eproverPromise file_tree\n>\n>     let timeout      = 1000 * 1000 -- microseconds\n>         processes    = 2\n>\n>     workers (Just timeout) processes (interleave promise_tree)\n>\n>     m_res <- evalTree (any (not . snd)) promise_tree\n>\n>     let res = fromMaybe [] m_res\n>\n>     putStrLn \"Results: \"\n>\n>     mapM_ print res\n\nThe result of this run is:\n\n> Results:\n> (\"plus-commutative/induction_x_y_0.tptp\",True)\n> (\"plus-commutative/induction_x_y_1.tptp\",True)\n> (\"plus-commutative/induction_x_y_2.tptp\",True)\n> (\"plus-commutative/induction_x_y_3.tptp\",True)\n\nThis means that four out of four obligations for commutativity of plus\nsucceeded when doing induction on both x and y.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ];
        buildable = true;
      };
      tests = {
        "trees" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm-promise" or (errorHandler.buildDepError "stm-promise"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }