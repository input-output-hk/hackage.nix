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
      identifier = { name = "loopy"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Emily Mitchell 2009-2011";
      maintainer = "Emily Mitchell <emily.g.h.mitchell@gmail.com>";
      author = "Emily Mitchell <emily.g.h.mitchell@gmail.com>";
      homepage = "http://www.esc.cam.ac.uk/people/research-students/emily-king";
      url = "";
      synopsis = "Find all biological feedback loops within an ecosystem graph.";
      description = "Find all biological feedback loops within an ecosystem graph.\nThis software is very much in development, and can probably only be used\nin conjunction with emailing the author! Documentation and cleanups to follow.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "loopy" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."GoogleChart" or (errorHandler.buildDepError "GoogleChart"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }