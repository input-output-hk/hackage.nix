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
      identifier = { name = "non-negative-time-diff"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Daniil Iaitkov 2026";
      maintainer = "dyaitskov@gmail.com";
      author = "Daniil Iaitskov";
      homepage = "http://github.com/yaitskov/non-negative-time-diff";
      url = "";
      synopsis = "type safe diffUTCTime";
      description = "Both arguments of @diffUTCTime@ function from @time@ package have the\nsame type. It is easy to mix them.\n\n> f = do\n>   started <- getCurrentTime\n>   threadDelay 10_000_000\n>   ended <- getCurrentTime\n>   pure $ started `diffUTCTime` ended\n\nThis package provides a stricter @diffUTCTime@ that significantly\nreduces possibility of mixing its arguments by an accident.\n\n> import Data.Time.Clock.NonNegativeTimeDiff\n> f = do\n>   started <- getCurrentTime\n>   threadDelay 10_000_000\n>   ended <- getTimeAfter started\n>   pure $ ended `diffUTCTime` started\n\n== STM use case\n#stm-use-case#\n\nThe STM package is shipped without a function to get current time. Let’s\nconsider a situtation like this:\n\n> data Ctx\n>   = Ctx { m :: Map Int UTCTime\n>         , s :: TVar NominalDiffTime\n>         , q :: TQueue Int\n>         }\n>\n> f (c :: Ctx) = do\n>   now <- getCurrentTime\n>   atomically $ do\n>     i <- readTQueue q\n>     lookup i c.m >>= \\case\n>       Nothing -> pure ()\n>       Just t -> modifyTVar' c.s (+ diffUTCTime now t)\n\n@now@ might be less than @t@ because the queue might be empty by the\ntime @f@ is invoked. The package API can correct the above snippet as\nfollows:\n\n> data Ctx\n>   = Ctx { m :: Map Int UtcBox\n>         , s :: TVar NominalDiffTime\n>         , q :: TQueue Int\n>         }\n>\n> f (c :: Ctx) = do\n>   atomically $ do\n>     i <- readTQueue q\n>     lookup i c.m >>= \\case\n>       Nothing -> pure ()\n>       Just t ->\n>         doAfter tb \\t -> do\n>           now <- getTimeAfter t\n>           modifyTVar' c.s (+ diffUTCTime now t)\n\n== File access time\n#file-access-time#\n\nAnother popular usecase where original @diffUTCTime@ might be misused.\n\n> isFileOlderThan :: FilePath -> NominalDiffTime -> IO Bool\n> isFileOlderThan fp maxAge = do\n>   now <- getCurrentTime\n>   mt <- getModificationTime fp\n>   when (mt `diffUTCTime` now > maxAge) $ do\n>     removeFile fp\n\nFile age is always negative in the above example - this eventually would\ncause a space leak on disk.\n\nCorrected version:\n\n> isFileOlderThan :: FilePath -> NominalDiffTime -> IO Bool\n> isFileOlderThan fp maxAge =\n>   getModificationTime fp >>= (`doAfter` \\mt -> do\n>     now <- getTimeAfter mt\n>     when (now `diffUTCTime` mt > maxAge) $ do\n>       removeFile fp)\n\n== Requirements\n#requirements#\n\nUnboxing @UtcBox@ values requires a GHC\n<https://hackage.haskell.org/package/ghc-typelits-natnormalise natnormalise plugin>:\n\n> {-# GHC_OPTIONS -fplugin GHC.TypeLits.Normalise #-}";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }