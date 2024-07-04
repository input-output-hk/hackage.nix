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
    flags = { pedantic = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "splint"; version = "2.0.0.3"; };
      license = "ISC";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "";
      url = "";
      synopsis = "HLint as a GHC source plugin.";
      description = "Splint makes HLint available as a GHC source plugin. To use it, pass\n@-fplugin=Splint@ to GHC. Any options passed to Splint are passed through to\nHLint. For example you can use @-fplugin-opt=Splint:'--ignore=Use concatMap'@\nto ignore the \"Use @concatMap@\" suggestion.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ] ++ (if compiler.isGhc && (compiler.version.ge "9.6.1" && compiler.version.lt "9.7")
          then [ (hsPkgs."hlint" or (errorHandler.buildDepError "hlint")) ]
          else pkgs.lib.optional (compiler.isGhc && (compiler.version.ge "9.8.1" && compiler.version.lt "9.9")) (hsPkgs."hlint" or (errorHandler.buildDepError "hlint")));
        buildable = true;
      };
    };
  }