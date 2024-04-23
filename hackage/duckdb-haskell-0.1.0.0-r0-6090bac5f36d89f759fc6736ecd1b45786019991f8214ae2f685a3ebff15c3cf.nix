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
    flags = { ignore-native-sources = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "duckdb-haskell"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2023 Tao He";
      maintainer = "sighingnow@gmail.com";
      author = "Tao He";
      homepage = "https://github.com/sighingnow/duckdb-haskell";
      url = "";
      synopsis = "Haskell bindings for duckdb.";
      description = "Full-featured haskell bindings for the duckdb database.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "9.4") (hsPkgs."system-cxx-std-lib" or (errorHandler.buildDepError "system-cxx-std-lib"));
        libs = pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "9.4")) (if system.isOsx || system.isFreebsd
          then [ (pkgs."c++" or (errorHandler.sysDepError "c++")) ]
          else if system.isWindows
            then if system.isX86_64 && (compiler.isGhc && compiler.version.lt "8.6.5")
              then [
                (pkgs."stdc++-6" or (errorHandler.sysDepError "stdc++-6"))
                (pkgs."gcc_s_seh-1" or (errorHandler.sysDepError "gcc_s_seh-1"))
              ]
              else if system.isX86_64
                then [
                  (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
                  (pkgs."gcc_s_seh-1" or (errorHandler.sysDepError "gcc_s_seh-1"))
                ]
                else if compiler.isGhc && compiler.version.ge "8.6.5"
                  then [
                    (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
                    (pkgs."gcc_s_dw2-1" or (errorHandler.sysDepError "gcc_s_dw2-1"))
                  ]
                  else [
                    (pkgs."stdc++-6" or (errorHandler.sysDepError "stdc++-6"))
                    (pkgs."gcc_s_dw2-1" or (errorHandler.sysDepError "gcc_s_dw2-1"))
                  ]
            else [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ]);
        buildable = true;
      };
      tests = {
        "duckdb-haskell-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."duckdb-haskell" or (errorHandler.buildDepError "duckdb-haskell"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }