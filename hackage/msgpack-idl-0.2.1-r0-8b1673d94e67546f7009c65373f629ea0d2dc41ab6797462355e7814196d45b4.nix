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
      specVersion = "1.8";
      identifier = { name = "msgpack-idl"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011, Hideyuki Tanaka";
      maintainer = "Hideyuki Tanaka <tanaka.hideyuki@gmail.com>";
      author = "Hideyuki Tanaka";
      homepage = "http://msgpack.org/";
      url = "";
      synopsis = "An IDL Compiler for MessagePack";
      description = "An IDL Compiler for MessagePack <http://msgpack.org/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."shakespeare-text" or (errorHandler.buildDepError "shakespeare-text"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."msgpack" or (errorHandler.buildDepError "msgpack"))
          (hsPkgs."peggy" or (errorHandler.buildDepError "peggy"))
          ];
        buildable = true;
        };
      exes = {
        "mpidl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."peggy" or (errorHandler.buildDepError "peggy"))
            (hsPkgs."msgpack-idl" or (errorHandler.buildDepError "msgpack-idl"))
            ];
          buildable = true;
          };
        };
      tests = {
        "mpidl-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."msgpack-idl" or (errorHandler.buildDepError "msgpack-idl"))
            ];
          buildable = true;
          };
        };
      };
    }