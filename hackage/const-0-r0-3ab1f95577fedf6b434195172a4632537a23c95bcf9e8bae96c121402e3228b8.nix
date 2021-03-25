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
      identifier = { name = "const"; version = "0"; };
      license = "(BSD-2-Clause OR Apache-2.0)";
      copyright = "Copyright (c) 2019-2021 Edward Kmett";
      maintainer = "Edward Kmett <ekmett@gmail.com>";
      author = "Edward Kmett";
      homepage = "https://github.com/ekmett/codex/tree/master/const#readme";
      url = "";
      synopsis = "Read-only mutable primitives";
      description = "Read-only mutable primitives.\n\nThis can be used for more accurate FFI bindings\nor simply to indicate more cleanly in your code\nwhat you are and aren't allowed to modify.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."ptrdiff" or (errorHandler.buildDepError "ptrdiff"))
          ];
        buildable = true;
        };
      };
    }