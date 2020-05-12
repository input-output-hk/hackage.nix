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
      specVersion = "1.6";
      identifier = { name = "idris"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Edwin Brady <eb@dcs.st-and.ac.uk>";
      author = "Edwin Brady";
      homepage = "http://www.cs.st-andrews.ac.uk/~eb/Idris/";
      url = "";
      synopsis = "Dependently Typed Functional Programming Language";
      description = "Idris is an experimental language with full dependent types.\nDependent types allow types to be predicated on values,\nmeaning that some aspects of a program's behaviour can be\nspecified precisely in the type. The language is closely\nrelated to Epigram and Agda. There is a tutorial at <http://www.cs.st-andrews.ac.uk/~eb/Idris/tutorial.html>.\n\nThe aims of the project are:\n\n* To provide a platform for realistic programming with dependent types.\nBy realistic, we mean the ability to interact with the outside world\nand use primitive types and operations. This includes networking,\nfile handling, concurrency, etc.\n\n* To show that full dependent types do not mean we have to abandon\nthe functional style we have come to know and love with languages\nlike Haskell and OCaml. We aim to show that lightweight dependently typed\nprogramming means allowing the programmer full access to values in types,\nand letting the type checker do the hard work so you don't have to!\n\nThe Darcs repository can be found at <http://www-fp.cs.st-andrews.ac.uk/~eb/darcs/Idris>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
          (hsPkgs."ivor" or (errorHandler.buildDepError "ivor"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."epic" or (errorHandler.buildDepError "epic"))
          ];
        buildable = true;
        };
      exes = {
        "idris" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
            (hsPkgs."ivor" or (errorHandler.buildDepError "ivor"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."epic" or (errorHandler.buildDepError "epic"))
            ];
          buildable = true;
          };
        };
      };
    }