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
      identifier = { name = "SoccerFun"; version = "0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010, Jan Rochel";
      maintainer = "jan@rochel.info";
      author = "Jan Rochel";
      homepage = "http://www.cs.ru.nl/~peter88/SoccerFun/SoccerFun.html";
      url = "";
      synopsis = "Football simulation framework for teaching functional programming";
      description = "This is a Haskell port of the the SoccerFun framework originally implemented in Clean. From the website: Soccer-Fun is an educational project to stimulate functional programming by thinking about, designing, implementing, running, and competing with the brains of football players! It is open for participation by everybody who likes to contribute. It is not restricted to a particular functional programming language.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
        buildable = true;
        };
      exes = { "sfRecord" = { buildable = true; }; };
      };
    }