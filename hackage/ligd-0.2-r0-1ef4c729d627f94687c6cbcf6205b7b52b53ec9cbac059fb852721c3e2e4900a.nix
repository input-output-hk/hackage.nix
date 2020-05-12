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
      identifier = { name = "ligd"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Universiteit Utrecht";
      maintainer = "Sean Leather <leather@cs.uu.nl>";
      author = "Sean Leather";
      homepage = "https://github.com/spl/ligd";
      url = "";
      synopsis = "Lightweight Implementation of Generics and Dynamics";
      description = "This is the basic representation types for the LIGD library. It is currently\nincomplete with respect to the paper. We hope to rectify that in the future.\n\nSee the following publication for details.\n\nJ. Cheney and R. Hinze. \"A lightweight implementation of generics and\ndynamics.\" In Haskell 2002. pp. 90-104.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }