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
      specVersion = "2.4";
      identifier = { name = "hsrs"; version = "0.1.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "marko@mesa.dev";
      author = "Marko Vejnovic";
      homepage = "https://github.com/harmont-dev/hsrs";
      url = "";
      synopsis = "Runtime support for hsrs-generated Haskell FFI bindings";
      description = "Provides the Haskell-side runtime needed by code generated\nby hsrs-codegen, including Borsh serialization utilities for\nFFI data transfer. Users of hsrs-generated bindings only need\nto add @hsrs@ to their @build-depends@ — the @borsh@ package\nis pulled in transitively.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."borsh" or (errorHandler.buildDepError "borsh"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }