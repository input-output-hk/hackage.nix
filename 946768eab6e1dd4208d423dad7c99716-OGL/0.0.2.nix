{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "OGL";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Neal Alexander <relapse.dev@gmx.com>";
        author = "";
        homepage = "http://haskell.org/haskellwiki/OGL";
        url = "";
        synopsis = "A context aware binding for the OpenGL graphics system";
        description = "A fork of the hOpenGL 2.2.1.1 package.\nModifications to OpenGL IO using the -XGeneralizedNewtypeDeriving extension create context sensitive MonadIO aliases.";
        buildType = "Configure";
      };
      components = {
        "OGL" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }