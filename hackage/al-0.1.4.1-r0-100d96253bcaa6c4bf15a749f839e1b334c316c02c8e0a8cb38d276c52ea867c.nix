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
    flags = { stdcall = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "al"; version = "0.1.4.1"; };
      license = "BSD-3-Clause";
      copyright = "Dimitri Sabadie";
      maintainer = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      author = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      homepage = "http://github.com/phaazon/al";
      url = "";
      synopsis = "OpenAL 1.1 raw API.";
      description = "OpenAL is a minimalistic sound API that aims to provide\nbare features for /spacialized audio/. The API looks like\nthe OpenGL one, thus the libs are pretty great together.\nUp to now, no OpenAL extension is supported. You're highly\ninvited to contribute ;).\nEAX is not supported yet either. It'll be embedded in\nfuture releases, soon.\nIn order to build and install \"al\", you'll need to have\npkg-config installed.\nFor Ubuntu users, there might be a bug with pkg-config.\nIf the install fails, consider using @cabal install al\nyour OpenAL setup is located to – you can help find that\nwith @find / -name al.h@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        libs = pkgs.lib.optional (system.isWindows) (pkgs."OpenAL32" or (errorHandler.sysDepError "OpenAL32"));
        frameworks = pkgs.lib.optionals (!system.isWindows) (pkgs.lib.optional (system.isOsx) (pkgs."OpenAL" or (errorHandler.sysDepError "OpenAL")));
        pkgconfig = pkgs.lib.optionals (!system.isWindows) (pkgs.lib.optional (!system.isOsx) (pkgconfPkgs."openal" or (errorHandler.pkgConfDepError "openal")));
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
    };
  }