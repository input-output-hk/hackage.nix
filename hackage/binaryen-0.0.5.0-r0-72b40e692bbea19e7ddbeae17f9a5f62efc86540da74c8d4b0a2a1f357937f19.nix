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
    flags = { system-binaryen = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "binaryen"; version = "0.0.5.0"; };
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
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binaryen".components.sublibs.libbinaryen or (errorHandler.buildDepError "binaryen:libbinaryen"))
        ];
        buildable = true;
      };
      sublibs = {
        "libbinaryen" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          libs = [
            (pkgs."pthread" or (errorHandler.sysDepError "pthread"))
            (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          ] ++ pkgs.lib.optional (flags.system-binaryen) (pkgs."binaryen" or (errorHandler.sysDepError "binaryen"));
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binaryen" or (errorHandler.buildDepError "binaryen"))
          ];
          buildable = true;
        };
      };
    };
  }