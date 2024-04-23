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
    flags = {
      wasapi = false;
      directsound = false;
      wmme = false;
      wdmks = false;
      bundle = false;
    };
    package = {
      specVersion = "1.10";
      identifier = { name = "bindings-portaudio"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Low-level bindings to portaudio library";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bindings-DSL" or (errorHandler.buildDepError "bindings-DSL"))
        ];
        libs = pkgs.lib.optionals (system.isWindows && flags.bundle) ([
          (pkgs."winmm" or (errorHandler.sysDepError "winmm"))
          (pkgs."ole32" or (errorHandler.sysDepError "ole32"))
        ] ++ pkgs.lib.optional (flags.wdmks) (pkgs."Setupapi" or (errorHandler.sysDepError "Setupapi")));
        pkgconfig = pkgs.lib.optional (system.isLinux || system.isFreebsd || system.isOsx || !flags.bundle) (pkgconfPkgs."portaudio-2.0" or (errorHandler.pkgConfDepError "portaudio-2.0"));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
    };
  }