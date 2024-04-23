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
    flags = { debug = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "monadiccp-gecode"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jrt@informatik.uni-kiel.de";
      author = "Tom Schrijvers, Pieter Wuille";
      homepage = "http://users.ugent.be/~tschrijv/MCP/";
      url = "";
      synopsis = "Constraint Programming";
      description = "Gecode extension for the Monadic Constraint Programming Framework (code generator and runtime solver backend)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."monadiccp" or (errorHandler.buildDepError "monadiccp"))
        ];
        libs = [
          (pkgs."gecodesupport" or (errorHandler.sysDepError "gecodesupport"))
          (pkgs."gecodeset" or (errorHandler.sysDepError "gecodeset"))
          (pkgs."gecodeint" or (errorHandler.sysDepError "gecodeint"))
          (pkgs."gecodekernel" or (errorHandler.sysDepError "gecodekernel"))
          (pkgs."gecodesearch" or (errorHandler.sysDepError "gecodesearch"))
        ];
        frameworks = [ (pkgs."gecode" or (errorHandler.sysDepError "gecode")) ];
        buildable = true;
      };
    };
  }