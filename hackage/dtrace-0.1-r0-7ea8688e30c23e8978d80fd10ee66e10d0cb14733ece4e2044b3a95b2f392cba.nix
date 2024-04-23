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
      specVersion = "1.2";
      identifier = { name = "dtrace"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Aaron Tomb <aarontomb@gmail.com>";
      author = "Aaron Tomb <aarontomb@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Haskell interface to the DTrace system tracing utility";
      description = "Haskell interface to the DTrace system tracing utility";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "DTTest" = { buildable = if flags.test then true else false; };
      };
    };
  }