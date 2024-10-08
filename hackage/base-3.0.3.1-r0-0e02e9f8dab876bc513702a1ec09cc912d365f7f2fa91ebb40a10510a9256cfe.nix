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
      specVersion = "1.2";
      identifier = { name = "base"; version = "3.0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Basic libraries (backwards-compatibility version)";
      description = "This is a backwards-compatible version of the base package.\nIt depends on a later version of base, and was probably supplied\nwith your compiler when it was installed.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
        ];
        buildable = if compiler.isGhc && compiler.version.lt "6.9"
          then false
          else true;
      };
    };
  }