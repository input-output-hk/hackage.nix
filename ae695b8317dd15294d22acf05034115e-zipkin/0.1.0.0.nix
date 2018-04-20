{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "zipkin";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "srijs@airpost.net";
        author = "Sam Rijs";
        homepage = "https://github.com/srijs/haskell-zipkin";
        url = "";
        synopsis = "Zipkin-style request tracing monad";
        description = "";
        buildType = "Simple";
      };
      components = {
        zipkin = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mersenne-random-pure64
            hsPkgs.mtl
            hsPkgs.safe
          ];
        };
      };
    }