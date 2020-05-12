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
      specVersion = "0";
      identifier = { name = "carray"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jed Brown <jed@59A2.org>";
      author = "Jed Brown";
      homepage = "";
      url = "";
      synopsis = "A C-compatible array library.";
      description = "A C-compatible array library.\n\nProvides both an immutable and mutable (in the IO monad) interface.\nIncludes utilities for multi-dimensional arrays, slicing and norms.\nMemory is 16-byte aligned by default to enable use of SIMD instructions.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      };
    }