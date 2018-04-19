{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ngx-export";
          version = "0.8.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016-2017 Alexey Radkov";
        maintainer = "Alexey Radkov <alexey.radkov@gmail.com>";
        author = "Alexey Radkov <alexey.radkov@gmail.com>";
        homepage = "http://github.com/lyokha/nginx-haskell-module";
        url = "";
        synopsis = "Helper module for Nginx haskell module";
        description = "Helper module for\n<http://github.com/lyokha/nginx-haskell-module Nginx haskell module>";
        buildType = "Simple";
      };
      components = {
        ngx-export = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.bytestring
            hsPkgs.monad-loops
            hsPkgs.binary
            hsPkgs.async
            hsPkgs.unix
          ];
        };
      };
    }