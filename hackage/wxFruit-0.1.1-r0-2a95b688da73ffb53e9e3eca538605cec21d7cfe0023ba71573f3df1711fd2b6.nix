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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "wxFruit"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Antony Courtney, Bart Robinson, Paul Hudak";
      homepage = "http://zoo.cs.yale.edu/classes/cs490/03-04b/bartholomew.robinson/";
      url = "";
      synopsis = "An implementation of Fruit using wxHaskell.";
      description = "This is an original version of wxFruit.\n\nwxFruit isn't maintained by original authors, and Haskell.org. So, there is a few forked version of wxFruit now. One extension is shelarcy's YaPan ( http://sourceforge.net/project/showfiles.php?group_id=168626&package_id=199138 ). It added Menu and OpenGL support. And another one is Remi Turk's Juicy Fruit ( http://www.cs.uu.nl/wiki/pub/Afp0607/DomainSpecificLanguages/fruit.pdf ). So, I uploaded this original version first.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
            ];
        buildable = true;
        };
      exes = {
        "paddle" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
            (hsPkgs."Yampa" or (errorHandler.buildDepError "Yampa"))
            ];
          buildable = true;
          };
        };
      };
    }