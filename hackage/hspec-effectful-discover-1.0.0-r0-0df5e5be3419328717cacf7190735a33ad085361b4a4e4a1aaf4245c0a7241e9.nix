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
      identifier = { name = "hspec-effectful-discover"; version = "1.0.0"; };
      license = "EUPL-1.2";
      copyright = "";
      maintainer = "IDA";
      author = "IDA";
      homepage = "https://digital-autonomy.institute";
      url = "";
      synopsis = "Automatic spec discovery for hspec-effectful";
      description = "@hspec-effectful-discover@ is a GHC preprocessor that finds every\n@*Spec.hs@ module beside your test driver and generates a @main@ that runs\nthem all using @<https://hackage.haskell.org/package/hspec-effectful Effectful.Hspec>@.\nIt is the @<https://hackage.haskell.org/package/effectful effectful>@\ncounterpart to @<https://hackage.haskell.org/package/hspec-discover hspec-discover>@.\n\n= How to run your specs automatically\n\nThis guide walks you through wiring up automatic spec discovery for a test\nsuite. Once it is in place, creating a new @*Spec.hs@ file next to your test\ndriver is all it takes to have its tests picked up and run.\n\n== Step 1: turn your test driver into a preprocessor stub\n\nYour test suite's entry point, e.g. @test\\/Main.hs@, should only contain the preprocessor pragma:\n\n@\n{-\\# OPTIONS_GHC -F -pgmF hspec-effectful-discover \\#-}\n@\n\nBefore compiling this module, GHC hands it to @hspec-effectful-discover@, which replaces it with\na generated module that imports and runs every spec it finds.\n\n== Step 2: make @hspec-effectful-discover@ available to your build\n\nDeclare the executable as a build tool of your test suite so that GHC can\nlocate it. In your @.cabal@ file:\n\n@\ntest-suite spec\n  type: exitcode-stdio-1.0\n  hs-source-dirs: test\n  main-is: Main.hs\n  build-tool-depends: hspec-effectful-discover:hspec-effectful-discover\n  build-depends: base, effectful, hspec-effectful\n@\n\n== Step 3: write your specs\n\nPut each spec in a module whose file name ends in @Spec.hs@ (for example\n@test\\/Account\\/BalanceSpec.hs@) and expose a top-level @spec@ action:\n\n@\nmodule Account.BalanceSpec (spec) where\n\nimport Effectful\nimport Effectful.Hspec\n\nspec :: (Hspec :> es) => Eff es ()\nspec = it \"starts empty\" $ pure () \\`shouldReturn\\` ()\n@\n\nIn addition to the 'Hspec' effect you also have access to 'IOE', allowing you to\nrun arbitrary other effects:\n\n@\nspec :: (IOE :> es, Hspec :> es) => Eff es ()\nspec = runFailIO . it \"can fail\" $ do\n      Just () <- pure Nothing\n      pure ()\n@\n\n@hspec-effectful-discover@ derives the module name from the file's path relative to\nthe driver, so @Account\\/BalanceSpec.hs@ becomes @Account.BalanceSpec@ and is\ngrouped under a @describe \\\"Balance\\\"@ block (the trailing @Spec@ is dropped).\nFiles named exactly @Spec.hs@ and hidden directories are ignored.\n\n== Step 4: run the suite\n\nBuild and run as usual, for instance with @cabal test@.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hspec-effectful-discover" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
      };
    };
  }