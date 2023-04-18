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
      identifier = { name = "vector-quicksort"; version = "0.1"; };
      license = "Apache-2.0";
      copyright = "(c) Sergey Vinokurov 2022";
      maintainer = "Sergey Vinokurov <serg.foo@gmail.com>";
      author = "Sergey Vinokurov";
      homepage = "https://github.com/sergv/vector-quicksort";
      url = "";
      synopsis = "Fast and flexible quicksort implementation for mutable vectors";
      description = "Quicksort implementation developed with performance in mind. Has\ngood default single-threaded sort and provides parallelised versions\nthat are actually faster than the single-threaded version. Users can\ndefine new parallelisation methods.\n\nGood starting point:\n\n> import Data.Vector.Algorithms.Quicksort qualified as Quick\n\nThen call as\n\n> Quick.sort xs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      sublibs = {
        "vector-quicksort-predefined" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-quicksort" or (errorHandler.buildDepError "vector-quicksort"))
            ];
          buildable = true;
          };
        "vector-quicksort-cpp" = {
          depends = (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "9.4") (hsPkgs."system-cxx-std-lib" or (errorHandler.buildDepError "system-cxx-std-lib"));
          libs = (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "9.4")) (if system.isOsx || system.isFreebsd
            then [ (pkgs."c++" or (errorHandler.sysDepError "c++")) ]
            else if system.isOpenbsd
              then [
                (pkgs."c++" or (errorHandler.sysDepError "c++"))
                (pkgs."c++abi" or (errorHandler.sysDepError "c++abi"))
                (pkgs."pthread" or (errorHandler.sysDepError "pthread"))
                ]
              else if system.isWindows
                then if compiler.isGhc && (compiler.version).lt "9.3"
                  then [
                    (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
                    ]
                  else [
                    (pkgs."c++" or (errorHandler.sysDepError "c++"))
                    (pkgs."c++abi" or (errorHandler.sysDepError "c++abi"))
                    ]
                else if system.isLinux
                  then [
                    (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
                    ]
                  else [
                    (pkgs."c++" or (errorHandler.sysDepError "c++"))
                    (pkgs."c++abi" or (errorHandler.sysDepError "c++abi"))
                    ]);
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-quicksort".components.sublibs.vector-quicksort-predefined or (errorHandler.buildDepError "vector-quicksort:vector-quicksort-predefined"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."atomic-counter" or (errorHandler.buildDepError "atomic-counter"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-builder-linear" or (errorHandler.buildDepError "text-builder-linear"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
            (hsPkgs."vector-quicksort" or (errorHandler.buildDepError "vector-quicksort"))
            (hsPkgs."vector-quicksort".components.sublibs.vector-quicksort-cpp or (errorHandler.buildDepError "vector-quicksort:vector-quicksort-cpp"))
            (hsPkgs."vector-quicksort".components.sublibs.vector-quicksort-predefined or (errorHandler.buildDepError "vector-quicksort:vector-quicksort-predefined"))
            ];
          buildable = true;
          };
        };
      };
    }