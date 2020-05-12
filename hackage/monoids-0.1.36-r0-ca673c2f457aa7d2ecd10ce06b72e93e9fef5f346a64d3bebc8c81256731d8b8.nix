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
    flags = {
      bytestring = true;
      fingertree = true;
      parallel = true;
      stm = true;
      quickcheck = true;
      text = true;
      reflection = true;
      parsec = true;
      mtl = true;
      overloaded-strings = true;
      optimize = false;
      };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "monoids"; version = "0.1.36"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://comonad.com/reader";
      url = "";
      synopsis = "Monoids, specialized containers and a general map/reduce framework";
      description = "Monoids, specialized containers and a general map/reduce framework";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((((((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."category-extras" or (errorHandler.buildDepError "category-extras"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ] ++ (pkgs.lib).optional (flags.bytestring) (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))) ++ (pkgs.lib).optional (flags.fingertree) (hsPkgs."fingertree" or (errorHandler.buildDepError "fingertree"))) ++ (pkgs.lib).optional (flags.parallel) (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))) ++ (pkgs.lib).optional (flags.text) (hsPkgs."text" or (errorHandler.buildDepError "text"))) ++ (pkgs.lib).optional (flags.stm) (hsPkgs."stm" or (errorHandler.buildDepError "stm"))) ++ (pkgs.lib).optional (flags.quickcheck) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))) ++ (pkgs.lib).optional (flags.reflection) (hsPkgs."reflection" or (errorHandler.buildDepError "reflection"))) ++ (pkgs.lib).optional (flags.parsec) (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))) ++ (pkgs.lib).optional (flags.mtl) (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"));
        buildable = true;
        };
      };
    }