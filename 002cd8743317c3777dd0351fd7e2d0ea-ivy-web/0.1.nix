{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "ivy-web";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "cnJamesDeng@gmail.com";
        author = "James Deng";
        homepage = "https://github.com/lilac/ivy-web/";
        url = "";
        synopsis = "A lightweight web framework, with type safe routes, based on invertible-syntax, and i18n support.";
        description = "The features of this web framework:\n*   Type safe routes, specify url-handler mapping in one place\n*   Simple yet elegant handler via type class\n*   Flexible template system, utilize exsisting libraries such as Blaze-Html and Hastache.\n*   Easy i18n\nFor an example, refer to https://github.com/lilac/ivy-example/";
        buildType = "Simple";
      };
      components = {
        ivy-web = {
          depends  = [
            hsPkgs.base
            hsPkgs.partial-isomorphisms
            hsPkgs.invertible-syntax
            hsPkgs.wai
            hsPkgs.http-types
          ];
        };
      };
    }