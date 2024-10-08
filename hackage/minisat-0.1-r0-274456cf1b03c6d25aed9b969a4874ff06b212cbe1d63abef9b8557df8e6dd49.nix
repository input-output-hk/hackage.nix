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
      identifier = { name = "minisat"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A Haskell bundle of the Minisat SAT solver";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
        ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"));
        libs = [
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
        ] ++ pkgs.lib.optional (!system.isWindows) (pkgs."z" or (errorHandler.sysDepError "z"));
        buildable = true;
      };
    };
  }