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
      identifier = { name = "filelock"; version = "0.1.1.8"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Andreas Abel";
      author = "Takano Akio";
      homepage = "http://github.com/haskell-pkg-janitors/filelock";
      url = "";
      synopsis = "Portable interface to file locking (flock / LockFileEx)";
      description = "This package provides an interface to Windows and Unix\nfile locking functionalities.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."filelock" or (errorHandler.buildDepError "filelock"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
        "interrupt" = {
          depends = [
            (hsPkgs."filelock" or (errorHandler.buildDepError "filelock"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if system.isWindows then false else true;
        };
      };
    };
  }