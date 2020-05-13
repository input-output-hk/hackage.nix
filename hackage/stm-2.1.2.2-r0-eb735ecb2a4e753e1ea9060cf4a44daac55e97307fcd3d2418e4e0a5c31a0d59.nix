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
    flags = { base4 = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "stm"; version = "2.1.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Software Transactional Memory";
      description = "A modular composable concurrency abstraction.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ] ++ [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ]) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "6.10") (hsPkgs."base" or (errorHandler.buildDepError "base"));
        buildable = true;
        };
      };
    }