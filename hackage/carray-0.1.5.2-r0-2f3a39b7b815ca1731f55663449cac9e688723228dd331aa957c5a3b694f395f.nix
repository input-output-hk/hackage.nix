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
    flags = { splitbase = true; bytestringinbase = true; base4 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "carray"; version = "0.1.5.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jed Brown <jed@59A2.org>, Henning Thielemann <fft@henning-thielemann.de>";
      author = "Jed Brown";
      homepage = "";
      url = "";
      synopsis = "A C-compatible array library.";
      description = "A C-compatible array library.\n\nProvides both an immutable and mutable (in the IO monad) interface.\nIncludes utilities for multi-dimensional arrays, slicing and norms.\nMemory is 16-byte aligned by default to enable use of SIMD instructions.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."ix-shapable" or (errorHandler.buildDepError "ix-shapable"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ] ++ (if flags.bytestringinbase
          then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ])) ++ (if flags.splitbase
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ])) ++ (if flags.base4
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      };
    }