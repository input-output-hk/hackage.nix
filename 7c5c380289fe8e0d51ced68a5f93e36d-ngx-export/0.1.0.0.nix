{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ngx-export";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Alexey Radkov";
        maintainer = "Alexey Radkov <alexey.radkov@gmail.com>";
        author = "Alexey Radkov <alexey.radkov@gmail.com>";
        homepage = "http://github.com/lyokha/nginx-haskell-module";
        url = "";
        synopsis = "Export custom haskell functions into nginx configuration";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "ngx-export" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.bytestring
          ];
        };
      };
    }