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
      specVersion = "1.18";
      identifier = { name = "record-dot-preprocessor"; version = "0.2.9"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2018-2021";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/record-dot-preprocessor#readme";
      url = "";
      synopsis = "Preprocessor to allow record.field syntax";
      description = "In almost every programming language @a.b@ will get the @b@ field from the @a@ data type, and many different data types can have a @b@ field.\nThe reason this feature is ubiquitous is because it's /useful/.\nThe @record-dot-preprocessor@ brings this feature to Haskell - see the README for full details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          ];
        buildable = if compiler.isGhc && (compiler.version).lt "8.6"
          then false
          else true;
        };
      exes = {
        "record-dot-preprocessor" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            ];
          buildable = true;
          };
        };
      tests = {
        "record-dot-preprocessor-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."record-hasfield" or (errorHandler.buildDepError "record-hasfield"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "8.6") (hsPkgs."record-dot-preprocessor" or (errorHandler.buildDepError "record-dot-preprocessor"));
          buildable = true;
          };
        };
      };
    }