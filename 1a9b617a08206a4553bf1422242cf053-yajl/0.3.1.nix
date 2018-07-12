{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yajl";
          version = "0.3.1";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "John Millikin <jmillikin@gmail.com>";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "https://john-millikin.com/software/haskell-yajl/";
        url = "";
        synopsis = "Bindings for YAJL, an event-based JSON implementation";
        description = "";
        buildType = "Simple";
      };
      components = {
        "yajl" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
          ];
          libs = [ pkgs.yajl ];
          build-tools = [
            hsPkgs.buildPackages.c2hs
          ];
        };
      };
    }