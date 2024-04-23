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
      specVersion = "1.6";
      identifier = { name = "splot"; version = "0.1.6"; };
      license = "BSD-3-Clause";
      copyright = "Eugene Kirpichov, 2010";
      maintainer = "Eugene Kirpichov <ekirpichov@gmail.com>";
      author = "Eugene Kirpichov <ekirpichov@gmail.com>";
      homepage = "http://www.haskell.org/haskellwiki/Splot";
      url = "";
      synopsis = "A tool for visualizing the lifecycle of many concurrent multi-staged processes.";
      description = "A tool for visualizing the lifecycle of many concurrent multi-staged processes.\nEach process has a name, it starts at a point in time, ends at a point in time, and at some\npoints in time it changes colour.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "splot" = {
          depends = [
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-lexing" or (errorHandler.buildDepError "bytestring-lexing"))
            (hsPkgs."strptime" or (errorHandler.buildDepError "strptime"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
    };
  }