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
    flags = { enable_dotnet = false; enable_mono = false; };
    package = {
      specVersion = "1.24";
      identifier = { name = "clr-host"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2017 Tim Matthews";
      maintainer = "tim.matthews7@gmail.com";
      author = "Tim Matthews";
      homepage = "https://gitlab.com/tim-m89/clr-haskell/tree/master/libs/clr-host";
      url = "";
      synopsis = "Hosting the Common Language Runtime";
      description = "clr-host is a library that provides the ability to host (also known as embed) the\ncommon language runtime within the current Haskell process. Generally you'll only\ninterface directly to this library to start the CLR, and the other code here is\nfor higher level abstractions to use.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.buildToolDepError "directory")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or (errorHandler.buildToolDepError "filepath")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.transformers or (pkgs.buildPackages.transformers or (errorHandler.buildToolDepError "transformers")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"));
        libs = ((pkgs.lib).optionals (flags.enable_dotnet) [
          (pkgs."oleaut32" or (errorHandler.sysDepError "oleaut32"))
          (pkgs."ole32" or (errorHandler.sysDepError "ole32"))
          ] ++ (pkgs.lib).optionals (flags.enable_mono) [
          (pkgs."glib-2.0" or (errorHandler.sysDepError "glib-2.0"))
          (pkgs."mono-2.0" or (errorHandler.sysDepError "mono-2.0"))
          ]) ++ (pkgs.lib).optionals (!flags.enable_dotnet && !flags.enable_mono) (if system.isWindows
          then [
            (pkgs."oleaut32" or (errorHandler.sysDepError "oleaut32"))
            (pkgs."ole32" or (errorHandler.sysDepError "ole32"))
            ]
          else [
            (pkgs."glib-2.0" or (errorHandler.sysDepError "glib-2.0"))
            (pkgs."mono-2.0" or (errorHandler.sysDepError "mono-2.0"))
            ]);
        buildable = true;
        };
      tests = {
        "clr-host-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."clr-host" or (errorHandler.buildDepError "clr-host"))
            ];
          buildable = true;
          };
        };
      };
    }