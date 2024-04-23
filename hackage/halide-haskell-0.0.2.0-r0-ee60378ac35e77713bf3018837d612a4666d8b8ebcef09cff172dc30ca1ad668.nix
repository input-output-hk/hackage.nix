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
      specVersion = "3.0";
      identifier = { name = "halide-haskell"; version = "0.0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2022-2023 Tom Westerhout";
      maintainer = "Tom Westerhout <14264576+twesterhout@users.noreply.github.com>";
      author = "Tom Westerhout";
      homepage = "https://github.com/twesterhout/halide-haskell";
      url = "";
      synopsis = "Haskell bindings to Halide";
      description = "Halide is a programming language designed to make it easier to write\nhigh-performance image and array processing code on modern machines. Rather\nthan being a standalone programming language, Halide is embedded in C++. This\nmeans you write C++ code that builds an in-memory representation of a Halide\npipeline using Halide's C++ API. You can then compile this representation to\nan object file, or JIT-compile it and run it in the same process.\n.\nThis package provides Haskell bindings that allow to write Halide embedded in\nHaskell without C++.\n.\nThe best way to learn Halide is to have a look at the\n[tutorials](https://github.com/twesterhout/halide-haskell/tree/master/tutorials).\nReference documentation is provided by the haddocks of the 'Language.Halide'\nmodule.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
          (hsPkgs."inline-c-cpp" or (errorHandler.buildDepError "inline-c-cpp"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
        libs = [ (pkgs."Halide" or (errorHandler.sysDepError "Halide")) ];
        buildable = true;
      };
      exes = {
        "halide-haskell" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."halide-haskell" or (errorHandler.buildDepError "halide-haskell"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "getting-started" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."halide-haskell" or (errorHandler.buildDepError "halide-haskell"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "halide-minimal-gpu" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."halide-haskell" or (errorHandler.buildDepError "halide-haskell"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
      tests = {
        "halide-haskell-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."halide-haskell" or (errorHandler.buildDepError "halide-haskell"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
            (hsPkgs."inline-c-cpp" or (errorHandler.buildDepError "inline-c-cpp"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }