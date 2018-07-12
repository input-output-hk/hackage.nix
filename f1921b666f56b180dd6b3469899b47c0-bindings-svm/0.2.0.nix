{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "bindings-svm";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Paulo Tanimoto <ptanimoto@gmail.com>\nVille Tirronen <aleator@gmail.com>";
        author = "Paulo Tanimoto <ptanimoto@gmail.com>\nVille Tirronen <aleator@gmail.com>";
        homepage = "http://github.com/tanimoto/bindings-svm";
        url = "";
        synopsis = "Low level bindings to libsvm.";
        description = "Low level bindings to libsvm <http://www.csie.ntu.edu.tw/~cjlin/libsvm/>.\n\nChanges in version 0.2.0\n\n* Updated to libsvm 3.1\n\n* Include libsvm with the package\n\n* Drop dependency on @pkg-config@\n\nChanges in version 0.1.0\n\n* Initial version\n";
        buildType = "Simple";
      };
      components = {
        "bindings-svm" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
          ];
          libs = [ pkgs."stdc++" ];
        };
      };
    }