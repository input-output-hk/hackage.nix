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
      regex = true;
      containers = true;
      quickcheck = true;
      hunit = true;
      dev = false;
      };
    package = {
      specVersion = "2.4";
      identifier = { name = "explainable-predicates"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Smith <cdsmith@gmail.com>";
      author = "Chris Smith <cdsmith@gmail.com>";
      homepage = "https://github.com/cdsmith/explainable-predicates";
      url = "";
      synopsis = "Predicates that can explain themselves.";
      description = "Explainable predicates are essentially functions from types\nto 'Bool' which can additionally describe themselves and\nexplain why an argument does or doesn't match.  They are\nintended to be used during unit tests to provide better\nerror messages when tests fail.  For example, if a\ncollection is missing an element, an explainable predicate\ncan tell you which element is missing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ] ++ (pkgs.lib).optional (flags.regex) (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))) ++ (pkgs.lib).optional (flags.containers) (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))) ++ (pkgs.lib).optional (flags.quickcheck) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))) ++ (pkgs.lib).optional (flags.hunit) (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"));
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest-exitcode-stdio" or (errorHandler.buildDepError "doctest-exitcode-stdio"))
            (hsPkgs."doctest-lib" or (errorHandler.buildDepError "doctest-lib"))
            (hsPkgs."explainable-predicates" or (errorHandler.buildDepError "explainable-predicates"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }