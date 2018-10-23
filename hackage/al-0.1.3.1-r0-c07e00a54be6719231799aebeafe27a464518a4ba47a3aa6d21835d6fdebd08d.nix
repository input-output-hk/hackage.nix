{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { stdcall = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "al";
        version = "0.1.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "Dimitri Sabadie";
      maintainer = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      author = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      homepage = "http://github.com/phaazon/al";
      url = "";
      synopsis = "OpenAL 1.1 raw API.";
      description = "OpenAL is a minimalistic sound API that aims to provide\nbare features for /spacialized audio/. The API looks like\nthe OpenGL one, thus the libs are pretty great together.\nUp to now, no OpenAL extension is supported. You're highly\ninvited to contribute ;).\nEAX is not supported yet either. It'll be embedded in\nfuture releases, soon.\nIMPORTANT: In order to build and install \"al\", you'll\nneed to pass the path of the /include/ and /libs/ directory\nof your OpenAL installation if you get errors.\nThen use this to install:\n@ cabal install --extra-include-dirs=path_to_include --extra-lib-dirs=path_to_libs @";
      buildType = "Simple";
    };
    components = {
      "al" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
        libs = if system.isWindows
          then [ (pkgs."OpenAL32") ]
          else [ (pkgs."openal") ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
    };
  }