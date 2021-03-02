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
      specVersion = "1.6";
      identifier = { name = "hgom"; version = "0.6"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Paul Brauner 2009\n(c) Emilie Balland 2009\n(c) INRIA 2009";
      maintainer = "Paul Brauner <paul.brauner@inria.fr>";
      author = "Paul Brauner and Emilie Balland";
      homepage = "http://github.com/polux/hgom";
      url = "";
      synopsis = "An haskell port of the java version of gom ";
      description = "The executable hgom takes a module consisting of several abstract datatypes\ndeclarations as an input and ouputs java classes. It is meant to mimic the java\nversion of Gom: <http://tom.loria.fr/wiki/index.php5/Documentation:Gom>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hgom" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."wl-pprint" or (errorHandler.buildDepError "wl-pprint"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ] ++ (pkgs.lib).optionals (flags.test) [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }