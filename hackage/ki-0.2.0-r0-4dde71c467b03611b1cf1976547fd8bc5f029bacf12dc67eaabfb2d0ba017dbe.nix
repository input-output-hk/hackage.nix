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
    flags = { test = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "ki"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2020 Mitchell Rosen";
      maintainer = "Mitchell Rosen <mitchellwrosen@gmail.com>";
      author = "Mitchell Rosen";
      homepage = "https://github.com/mitchellwrosen/ki";
      url = "";
      synopsis = "A lightweight, structured-concurrency library";
      description = "A lightweight, structured-concurrency library.\n\nThis package comes in two variants:\n\n* \"Ki\" exposes the most stripped-down variant; start here.\n\n* \"Ki.Implicit\" extends \"Ki\" with an implicit context that's used to\npropagate soft cancellation signals.\n\nUsing this variant comes at a cost:\n\n* You must manually add constraints to propagate the implicit context to\nwhere it's needed.\n\n* To remain warning-free, you must delete the implicit context constraints\nwhere they are no longer needed.\n\nIf you don't need soft-cancellation, there is no benefit to using this\nvariant, and you should stick with \"Ki\".\n\nBecause you'll only ever need one variant at a time, I recommend using a\n<https://cabal.readthedocs.io/en/latest/cabal-package.html#pkg-field-mixins mixin stanza>\nto rename one module to @Ki@ while hiding the others. This also simplifies the\nprocess of upgrading from \"Ki.Implicit\" to \"Ki\" if necessary.\n\n@\nmixins: ki (Ki.Implicit as Ki)\n@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ] ++ pkgs.lib.optionals (flags.test) [
          (hsPkgs."concurrency" or (errorHandler.buildDepError "concurrency"))
          (hsPkgs."dejafu" or (errorHandler.buildDepError "dejafu"))
        ];
        buildable = true;
      };
      tests = {
        "dejafu-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."concurrency" or (errorHandler.buildDepError "concurrency"))
            (hsPkgs."dejafu" or (errorHandler.buildDepError "dejafu"))
            (hsPkgs."ki" or (errorHandler.buildDepError "ki"))
          ];
          buildable = true;
        };
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ki" or (errorHandler.buildDepError "ki"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
          buildable = true;
        };
      };
    };
  }