{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fay-base";
          version = "0.19.4.2";
        };
        license = "BSD-3-Clause";
        copyright = "2012 Chris Done";
        maintainer = "adam@bergmark.nl";
        author = "Chris Done";
        homepage = "https://github.com/faylang/fay/";
        url = "";
        synopsis = "The base package for Fay.";
        description = "The base package for Fay.\nThis package amongst others exports Prelude and FFI which you probably want to use with Fay.";
        buildType = "Simple";
      };
      components = {
        fay-base = {
          depends  = [
            hsPkgs.base
            hsPkgs.fay
          ];
        };
      };
    }