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
      identifier = { name = "threadscope"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Released under the GHC license";
      maintainer = "Satnam Singh <s.singh@ieee.org>";
      author = "Donnie Jones, Simon Marlow, Satnam Singh";
      homepage = "";
      url = "";
      synopsis = "A graphical thread profiler.";
      description = "A graphical viewer for GHC eventlog traces.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "threadscope" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
            (hsPkgs."glade" or (errorHandler.buildDepError "glade"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc-events" or (errorHandler.buildDepError "ghc-events"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
          buildable = true;
        };
      };
    };
  }