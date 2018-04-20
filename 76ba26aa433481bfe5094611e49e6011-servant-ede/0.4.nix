{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-ede";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Alp Mestanogullari";
        maintainer = "alpmestan@gmail.com";
        author = "Alp Mestanogullari";
        homepage = "http://github.com/alpmestan/servant-ede";
        url = "";
        synopsis = "Combinators for rendering EDE templates in servant web applications";
        description = "Combinators for rendering EDE templates in servant web applications.\n\nDocumentation and examples available at \"Servant.HTML.EDE\".";
        buildType = "Simple";
      };
      components = {
        servant-ede = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.filepath
            hsPkgs.ede
            hsPkgs.either
            hsPkgs.http-media
            hsPkgs.http-types
            hsPkgs.semigroups
            hsPkgs.servant
            hsPkgs.servant-server
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.wai
          ];
        };
        exes = {
          servant-ede-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.ede
              hsPkgs.servant-server
              hsPkgs.servant-ede
              hsPkgs.warp
            ];
          };
        };
      };
    }