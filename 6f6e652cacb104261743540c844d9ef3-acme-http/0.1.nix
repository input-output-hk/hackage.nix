{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "acme-http";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2012 Jeremy Shaw, SeeReason Partners LLC";
        maintainer = "jeremy@n-heptane.com";
        author = "Jeremy Shaw";
        homepage = "";
        url = "";
        synopsis = "fastest Haskell PONG server in the world";
        description = "winning the PONG benchmark at all costs";
        buildType = "Simple";
      };
      components = {
        "acme-http" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.extensible-exceptions
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.pretty
          ];
        };
        exes = { "pong" = {}; };
      };
    }