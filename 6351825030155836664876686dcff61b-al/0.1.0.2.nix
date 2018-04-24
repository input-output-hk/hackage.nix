{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "al";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Dimitri Sabadie";
        maintainer = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
        author = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
        homepage = "http://github.com/phaazon/al";
        url = "";
        synopsis = "OpenAL 1.1 raw API.";
        description = "__OpenAL__ is a minimalistic sound API that aims to provide\nbare features for /spacialized audio/. The API looks like\nthe *OpenGL* one, thus the libs are pretty great together.\nUp to now, no OpenAL extension is supported. You're highly\ninvited to contribute ;).\n__EAX__ is not supported yet eiher. It'll be embedded in\nfuture releases, soon.\n__IMPORTANT__: In order to build and install \"al\", you'll\nneed to pass the path of the /include/ and /libs/ directory\nof your OpenAL installation.\nThen use this to install:\n@ cabal install --extra-include-dirs=path_to_include --extr-lib-dirs=path_to_libs @";
        buildType = "Simple";
      };
      components = {
        al = {
          depends  = [ hsPkgs.base ];
          build-tools = [ hsPkgs.c2hs ];
        };
      };
    }