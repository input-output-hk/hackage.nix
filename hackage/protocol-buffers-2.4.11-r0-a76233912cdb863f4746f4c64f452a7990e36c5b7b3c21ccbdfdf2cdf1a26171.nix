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
      specVersion = "1.6";
      identifier = { name = "protocol-buffers"; version = "2.4.11"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2015 Christopher Edward Kuklewicz";
      maintainer = "Timo von Holtz <tvh@tvholtz.de>, Kostiantyn Rybnikov <k-bx@k-bx.com>";
      author = "Christopher Edward Kuklewicz";
      homepage = "https://github.com/k-bx/protocol-buffers";
      url = "http://hackage.haskell.org/package/protocol-buffers";
      synopsis = "Parse Google Protocol Buffer specifications";
      description = "Parse proto files and generate Haskell code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
      };
    };
  }