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
      identifier = { name = "hlint-plugin"; version = "1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2023 Mercury Technologies";
      maintainer = "gabriella@mercury.com";
      author = "Mercury Technologies";
      homepage = "";
      url = "";
      synopsis = "GHC plugin for hlint";
      description = "This package provides a GHC plugin that runs `hlint` on the compiled\nmodule.  The main advantages of doing this are: (A) better integration with\nGHC tooling, (B) only linting modules that change, and (C) only parsing the\nmodule once.\n.\nNote that this package will only build if you build the @hlint@ dependency\nwith @-f-ghc-lib@ and build the @ghc-lib-parser-ex@ dependency with\n@-fno-ghc-lib@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ] ++ pkgs.lib.optionals (compiler.isGhc && (compiler.version.ge "9.0" && compiler.version.lt "9.2")) [
          (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
        ]) ++ pkgs.lib.optionals (compiler.isGhc && (compiler.version.ge "9.2" && compiler.version.lt "9.4")) [
          (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
        ]) ++ pkgs.lib.optionals (compiler.isGhc && (compiler.version.ge "9.4" && compiler.version.lt "9.6")) [
          (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
        ]) ++ pkgs.lib.optionals (compiler.isGhc && (compiler.version.ge "9.6" && compiler.version.lt "9.8")) [
          (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
        ];
        buildable = true;
      };
    };
  }