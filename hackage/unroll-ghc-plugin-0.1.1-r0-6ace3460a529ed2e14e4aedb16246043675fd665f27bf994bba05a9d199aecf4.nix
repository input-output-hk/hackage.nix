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
      identifier = { name = "unroll-ghc-plugin"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) the GHC authors";
      maintainer = "Austin Seipp <mad.one@gmail.com>";
      author = "Max Bolingbroke";
      homepage = "http://thoughtpolice.github.com/unroll-ghc-plugin";
      url = "";
      synopsis = "Compiler plugin for loop unrolling";
      description = "This plugin gives an example of defining a compiler plugin for\nGHC. It unrolls/peels loops loops that are properly annoted. See the\nincluded tests for examples.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
        ];
        buildable = true;
      };
    };
  }