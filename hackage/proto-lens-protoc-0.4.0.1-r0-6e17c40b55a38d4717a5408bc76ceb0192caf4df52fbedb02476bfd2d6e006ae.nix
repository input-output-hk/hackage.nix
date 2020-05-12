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
      identifier = { name = "proto-lens-protoc"; version = "0.4.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Google Inc.";
      maintainer = "proto-lens@googlegroups.com";
      author = "Judah Jacobson";
      homepage = "https://github.com/google/proto-lens#readme";
      url = "";
      synopsis = "Protocol buffer compiler for the proto-lens library.";
      description = "Turn protocol buffer files (.proto) into Haskell files (.hs) which can be used with the proto-lens package.\nThe library component of this package contains compiler code (namely Data.ProtoLens.Compiler.*) is not guaranteed to have stable APIs.'";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "proto-lens-protoc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
            (hsPkgs."proto-lens" or (errorHandler.buildDepError "proto-lens"))
            (hsPkgs."proto-lens-protoc" or (errorHandler.buildDepError "proto-lens-protoc"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }