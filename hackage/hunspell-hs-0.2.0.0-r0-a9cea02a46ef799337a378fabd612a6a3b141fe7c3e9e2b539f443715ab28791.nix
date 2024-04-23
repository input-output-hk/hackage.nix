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
      specVersion = "1.10";
      identifier = { name = "hunspell-hs"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Ashutosh Rishi Ranjan";
      maintainer = "ashutoshrishi92@gmail.com";
      author = "Ashutosh Rishi Ranjan";
      homepage = "https://github.com/ashutoshrishi/hunspell-hs#readme";
      url = "";
      synopsis = "Hunspell thread-safe FFI bindings for spell checking.";
      description = "Please see the README on GitHub at <https://github.com/ashutoshrishi/hunspell-hs#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ];
        libs = pkgs.lib.optional (system.isOsx) (pkgs."hunspell-1.6" or (errorHandler.sysDepError "hunspell-1.6"));
        pkgconfig = pkgs.lib.optional (system.isLinux) (pkgconfPkgs."hunspell" or (errorHandler.pkgConfDepError "hunspell"));
        buildable = true;
      };
      tests = {
        "hunspell-hs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hunspell-hs" or (errorHandler.buildDepError "hunspell-hs"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
          libs = pkgs.lib.optional (system.isOsx) (pkgs."hunspell-1.6" or (errorHandler.sysDepError "hunspell-1.6"));
          pkgconfig = pkgs.lib.optional (system.isLinux) (pkgconfPkgs."hunspell" or (errorHandler.pkgConfDepError "hunspell"));
          buildable = true;
        };
      };
      benchmarks = {
        "hunspell-hs-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hunspell-hs" or (errorHandler.buildDepError "hunspell-hs"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
          libs = pkgs.lib.optional (system.isOsx) (pkgs."hunspell-1.6" or (errorHandler.sysDepError "hunspell-1.6"));
          pkgconfig = pkgs.lib.optional (system.isLinux) (pkgconfPkgs."hunspell" or (errorHandler.pkgConfDepError "hunspell"));
          buildable = true;
        };
      };
    };
  }