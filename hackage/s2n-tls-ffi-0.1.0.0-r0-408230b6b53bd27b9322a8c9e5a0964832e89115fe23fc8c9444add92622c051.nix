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
      identifier = { name = "s2n-tls-ffi"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2026 Daniel Goertzen";
      maintainer = "daniel.goertzen@gmail.com";
      author = "Daniel Goertzen";
      homepage = "https://github.com/goertzenator/s2n-tls-ffi";
      url = "";
      synopsis = "Low-level FFI bindings to the s2n-tls library";
      description = "Low-level FFI bindings to the s2n-tls library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        libs = [ (pkgs."s2n" or (errorHandler.sysDepError "s2n")) ];
        buildable = true;
      };
      tests = {
        "memory-safety" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."s2n-tls-ffi" or (errorHandler.buildDepError "s2n-tls-ffi"))
          ];
          buildable = true;
        };
      };
    };
  }