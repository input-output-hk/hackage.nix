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
    flags = { bytestring = true; text = true; vector = true; };
    package = {
      specVersion = "3.0";
      identifier = { name = "nothunks"; version = "0.3.1"; };
      license = "Apache-2.0";
      copyright = "2018-2025 Input Output Global Inc (IOG)";
      maintainer = "Marcin Szamotulski <coot@coot.me>";
      author = "IOG";
      homepage = "";
      url = "";
      synopsis = "Examine values for unexpected thunks";
      description = "Long lived application data typically should not contain\nany thunks. This library can be used to examine values for\nunexpected thunks, which can then be used in assertions.\nThis can be invaluable in avoiding memory leaks, or tracking\ndown existing ones.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."ghc-heap" or (errorHandler.buildDepError "ghc-heap"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "9.2") (hsPkgs."wherefrom-compat" or (errorHandler.buildDepError "wherefrom-compat"))) ++ pkgs.lib.optional (flags.bytestring) (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))) ++ pkgs.lib.optional (flags.text) (hsPkgs."text" or (errorHandler.buildDepError "text"))) ++ pkgs.lib.optional (flags.vector) (hsPkgs."vector" or (errorHandler.buildDepError "vector"));
        buildable = true;
      };
      tests = {
        "nothunks-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."nothunks" or (errorHandler.buildDepError "nothunks"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
          ];
          buildable = true;
        };
      };
    };
  }