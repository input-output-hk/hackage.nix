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
    flags = { poppler = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hxournal"; version = "0.6.4.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "http://ianwookim.org/hxournal";
      url = "";
      synopsis = "A pen notetaking program written in haskell ";
      description = "notetaking program written in haskell and gtk2hs";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = if flags.poppler
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."monad-coroutine" or (errorHandler.buildDepError "monad-coroutine"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."xournal-types" or (errorHandler.buildDepError "xournal-types"))
            (hsPkgs."xournal-parser" or (errorHandler.buildDepError "xournal-parser"))
            (hsPkgs."xournal-render" or (errorHandler.buildDepError "xournal-render"))
            (hsPkgs."xournal-builder" or (errorHandler.buildDepError "xournal-builder"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."double-conversion" or (errorHandler.buildDepError "double-conversion"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
            (hsPkgs."poppler" or (errorHandler.buildDepError "poppler"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."TypeCompose" or (errorHandler.buildDepError "TypeCompose"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."monad-coroutine" or (errorHandler.buildDepError "monad-coroutine"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."xournal-types" or (errorHandler.buildDepError "xournal-types"))
            (hsPkgs."xournal-parser" or (errorHandler.buildDepError "xournal-parser"))
            (hsPkgs."xournal-render" or (errorHandler.buildDepError "xournal-render"))
            (hsPkgs."xournal-builder" or (errorHandler.buildDepError "xournal-builder"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."double-conversion" or (errorHandler.buildDepError "double-conversion"))
            (hsPkgs."fclabels" or (errorHandler.buildDepError "fclabels"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."TypeCompose" or (errorHandler.buildDepError "TypeCompose"))
            (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
            ];
        buildable = true;
        };
      exes = {
        "hxournal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."hxournal" or (errorHandler.buildDepError "hxournal"))
            ];
          buildable = true;
          };
        };
      };
    }