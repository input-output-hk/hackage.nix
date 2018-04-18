{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "thespian";
          version = "0.9";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "alexander.the.average@gmail.com";
        author = "Alex Constandache";
        homepage = "http://bitbucket.org/alinabi/thespian";
        url = "";
        synopsis = "Lightweight Erlang-style actors for Haskell";
        description = "";
        buildType = "Simple";
      };
      components = {
        thespian = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }