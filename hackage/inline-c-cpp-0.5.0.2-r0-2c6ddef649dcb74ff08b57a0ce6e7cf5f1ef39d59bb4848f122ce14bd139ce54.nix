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
    flags = { std-vector-example = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "inline-c-cpp"; version = "0.5.0.2"; };
      license = "MIT";
      copyright = "(c) 2015-2016 FP Complete Corporation, (c) 2017-2019 Francesco Mazzoli";
      maintainer = "f@mazzo.li";
      author = "Francesco Mazzoli";
      homepage = "";
      url = "";
      synopsis = "Lets you embed C++ code into Haskell.";
      description = "Utilities to inline C++ code into Haskell using inline-c.  See\ntests for example on how to build.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "9.4") (hsPkgs."system-cxx-std-lib" or (errorHandler.buildDepError "system-cxx-std-lib"));
        libs = (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "9.4")) (if system.isLinux
          then [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ]
          else (pkgs.lib).optional (system.isOsx) (pkgs."c++" or (errorHandler.sysDepError "c++")));
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
            (hsPkgs."inline-c-cpp" or (errorHandler.buildDepError "inline-c-cpp"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "9.4") (hsPkgs."system-cxx-std-lib" or (errorHandler.buildDepError "system-cxx-std-lib"));
          libs = (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "9.4")) (if system.isLinux
            then [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ]
            else (pkgs.lib).optional (system.isOsx) (pkgs."c++" or (errorHandler.sysDepError "c++")));
          buildable = true;
          };
        };
      };
    }