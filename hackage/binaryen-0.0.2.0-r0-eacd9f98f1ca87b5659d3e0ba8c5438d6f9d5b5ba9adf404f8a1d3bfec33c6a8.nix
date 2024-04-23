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
      specVersion = "1.12";
      identifier = { name = "binaryen"; version = "0.0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Tweag I/O";
      maintainer = "Cheng Shao <cheng.shao@tweag.io>";
      author = "";
      homepage = "https://github.com/tweag/haskell-binaryen#readme";
      url = "";
      synopsis = "Haskell bindings to binaryen";
      description = "Haskell bindings to [binaryen](https://github.com/WebAssembly/binaryen). Provides complete bindings to the C API, which can be useful for building WebAssembly toolchains in Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [
          (pkgs."binaryen" or (errorHandler.sysDepError "binaryen"))
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
        ];
        buildable = true;
      };
    };
  }