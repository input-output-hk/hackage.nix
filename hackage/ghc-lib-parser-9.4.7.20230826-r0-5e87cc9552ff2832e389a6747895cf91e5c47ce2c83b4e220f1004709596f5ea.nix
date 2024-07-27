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
    flags = { threaded-rts = true; };
    package = {
      specVersion = "2.0";
      identifier = { name = "ghc-lib-parser"; version = "9.4.7.20230826"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Digital Asset";
      author = "The GHC Team and Digital Asset";
      homepage = "https://github.com/digital-asset/ghc-lib";
      url = "";
      synopsis = "The GHC API, decoupled from GHC versions";
      description = "A package equivalent to the @ghc@ package, but which can be loaded on many compiler versions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ] ++ (if !system.isWindows
          then [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]
          else [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]);
        build-tools = [
          (hsPkgs.pkgsBuildBuild.alex.components.exes.alex or (pkgs.pkgsBuildBuild.alex or (errorHandler.buildToolDepError "alex:alex")))
          (hsPkgs.pkgsBuildBuild.happy.components.exes.happy or (pkgs.pkgsBuildBuild.happy or (errorHandler.buildToolDepError "happy:happy")))
        ];
        buildable = true;
      };
    };
  }