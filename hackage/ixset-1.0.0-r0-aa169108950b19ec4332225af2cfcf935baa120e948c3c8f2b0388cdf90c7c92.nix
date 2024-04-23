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
    flags = { base4 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "ixset"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Happstack team <happs@googlegroups.com>";
      author = "Happstack team, HAppS LLC";
      homepage = "http://happstack.com";
      url = "";
      synopsis = "Efficient relational queries on Haskell sets. ";
      description = "Just pick which parts of your data structures you want indexed\nusing an easy to use template-haskell function. Spare yourself the\nneed to write, run, and maintain code that marshalls your data\nto/from an external relational database just for efficient\nqueries. happstack-ixset relies on generics and TH to spare you\nthe boilerplate normally required for such tasks.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ] ++ (if flags.base4
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ])) ++ [
          (hsPkgs."syb-with-class" or (errorHandler.buildDepError "syb-with-class"))
        ];
        buildable = true;
      };
    };
  }