{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "getopt-simple";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Alexander Bondarenko 2012";
        maintainer = "aenor.realm@gmail.com";
        author = "Alexander Bondarenko";
        homepage = "https://bitbucket.org/dpwiz/getopt-simple";
        url = "";
        synopsis = "A \"System.Console.GetOpt\" wrapper to make simple use case easy.";
        description = "There's no need to invoke full 'getOpt' power in everyday use. So, here it is a most common use case implemented to be as painless as possible while retaining some functionality. It's divided into three layers, each built upon another. You can start at highest and peel of layers to gradually unlock more 'getOpt' features.";
        buildType = "Simple";
      };
      components = {
        "getopt-simple" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }