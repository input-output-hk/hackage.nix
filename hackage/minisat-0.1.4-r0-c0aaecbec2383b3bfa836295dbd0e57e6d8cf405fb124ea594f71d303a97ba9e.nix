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
      specVersion = "2.2";
      identifier = { name = "minisat"; version = "0.1.4"; };
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
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "9.4") (hsPkgs."system-cxx-std-lib" or (errorHandler.buildDepError "system-cxx-std-lib"));
        libs = pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "9.4")) (if system.isOsx || system.isFreebsd
          then [ (pkgs."c++" or (errorHandler.sysDepError "c++")) ]
          else if system.isOpenbsd
            then [
              (pkgs."c++" or (errorHandler.sysDepError "c++"))
              (pkgs."c++abi" or (errorHandler.sysDepError "c++abi"))
              (pkgs."pthread" or (errorHandler.sysDepError "pthread"))
            ]
            else if system.isWindows
              then if compiler.isGhc && compiler.version.lt "9.3"
                then [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ]
                else [
                  (pkgs."c++" or (errorHandler.sysDepError "c++"))
                  (pkgs."c++abi" or (errorHandler.sysDepError "c++abi"))
                ]
              else if system.isWasm32
                then [
                  (pkgs."c++" or (errorHandler.sysDepError "c++"))
                  (pkgs."c++abi" or (errorHandler.sysDepError "c++abi"))
                ]
                else [
                  (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
                ]);
        buildable = true;
      };
    };
  }