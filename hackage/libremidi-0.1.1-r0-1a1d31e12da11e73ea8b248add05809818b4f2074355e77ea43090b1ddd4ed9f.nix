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
      identifier = { name = "libremidi"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2024 Eric Conlon";
      maintainer = "ejconlon@gmail.com";
      author = "Eric Conlon";
      homepage = "https://github.com/ejconlon/libremidi-haskell#readme";
      url = "";
      synopsis = "libremidi bindings for haskell";
      description = "Please see the README on GitHub at <https://github.com/ejconlon/libremidi-haskell#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        libs = [ (pkgs."stdc++" or (errorHandler.sysDepError "stdc++")) ];
        frameworks = pkgs.lib.optionals (system.isOsx) [
          (pkgs."CoreMIDI" or (errorHandler.sysDepError "CoreMIDI"))
          (pkgs."CoreAudio" or (errorHandler.sysDepError "CoreAudio"))
          (pkgs."CoreFoundation" or (errorHandler.sysDepError "CoreFoundation"))
        ];
        pkgconfig = pkgs.lib.optionals (system.isLinux) [
          (pkgconfPkgs."libpipewire-0.3" or (errorHandler.pkgConfDepError "libpipewire-0.3"))
          (pkgconfPkgs."udev" or (errorHandler.pkgConfDepError "udev"))
        ];
        buildable = true;
      };
      exes = {
        "libremidi-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."libremidi" or (errorHandler.buildDepError "libremidi"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
      tests = {
        "libremidi-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."libremidi" or (errorHandler.buildDepError "libremidi"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
    };
  }