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
    flags = { call-stacks = false; assertions = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "emacs-module"; version = "0.2.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Sergey Vinokurov <serg.foo@gmail.com>";
      author = "Sergey Vinokurov";
      homepage = "https://github.com/sergv/emacs-module";
      url = "";
      synopsis = "Utilities to write Emacs dynamic modules";
      description = "This package provides a full set of bindings to emacs-module.h that\nallows to develop Emacs modules in Haskell. Bindings are based on\nEmacs 28 version of the interface and thus should work in all\nsubsequent versions of Emacs, but will now work with earlier versions.\n\nFor pointers on how to write minimal Emacs module, please refer to\ntutorial https://github.com/sergv/emacs-module/blob/master/Tutorial.md.\n\nEntry point: Emacs.Module module.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."monad-interleave" or (errorHandler.buildDepError "monad-interleave"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-combinators" or (errorHandler.buildDepError "prettyprinter-combinators"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."tuples-homogenous-h98" or (errorHandler.buildDepError "tuples-homogenous-h98"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
    };
  }