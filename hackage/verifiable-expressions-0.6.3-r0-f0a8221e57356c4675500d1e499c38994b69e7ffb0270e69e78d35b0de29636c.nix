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
      specVersion = "1.12";
      identifier = { name = "verifiable-expressions"; version = "0.6.3"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "madgenhetic@gmail.com";
      author = "Bradley Hardy";
      homepage = "https://github.com/camfort/verifiable-expressions#readme";
      url = "";
      synopsis = "An intermediate language for Hoare logic style verification.";
      description = "A typed intermediate language for Hoare logic style verification. It defines the intermediate language and combinators to interact it.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."union" or (errorHandler.buildDepError "union"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "9.6") (hsPkgs."sbv" or (errorHandler.buildDepError "sbv"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "9.6") (hsPkgs."sbv" or (errorHandler.buildDepError "sbv"));
        buildable = true;
      };
    };
  }