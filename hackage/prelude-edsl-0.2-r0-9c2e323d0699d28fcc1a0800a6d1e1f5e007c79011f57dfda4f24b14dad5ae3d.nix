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
      specVersion = "1.10";
      identifier = { name = "prelude-edsl"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015, Emil Axelsson";
      maintainer = "emax@chalmers.se";
      author = "Emil Axelsson";
      homepage = "https://github.com/emilaxelsson/prelude-edsl";
      url = "";
      synopsis = "An EDSL-motivated subset of the Prelude";
      description = "\"Prelude.EDSL\" exports a small subset of the \"Prelude\":\nsome standard types and classes plus a small number of\nconvenience functions.\n\nThe motivation for this module is that it is common for\ndeeply embedded domain-specific languages (EDSLs) to\nredefine identifiers from the \"Prelude\", so EDSL users must\nhide the \"Prelude\" in their programs. However, there are\ncertain useful things from the \"Prelude\" that are usually\nnot redefined -- function composition being one example --\nso it becomes quite awkward to have to hide everything from\nthe \"Prelude\".\n\nThe reason for exporting e.g the @Num@ class but not @Ord@\nis that it is possible to give an instance for deep\nembeddings of the former but not the latter. For example,\nassuming @Exp@ is the type of a deep embedding, we can have\n\n> (+) :: Exp -> Exp -> Exp\n\nbut not\n\n> (<) :: Exp -> Exp -> Exp\n\n(because @(<)@ has a @Bool@ result, regardless of the type\nof the arguments).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }