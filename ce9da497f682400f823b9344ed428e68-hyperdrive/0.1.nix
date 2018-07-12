{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hyperdrive";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2012 Jeremy Shaw";
        maintainer = "jeremy@n-heptane.com";
        author = "Jeremy Shaw";
        homepage = "";
        url = "";
        synopsis = "a fast, trustworthy HTTP(s) server built";
        description = "hyperdrive aims to provide an HTTP server which is not only\nextremely fast, but also provides a high-level of proof that\nits implementation is correct.\n\nhyperdrive is still in alpha and not at all suitable for\nuse. The current implementation is relatively fast, but does\nnot yet use any of the techniques for proof-of-correctness. It\nalso does not implement many essential features yet.";
        buildType = "Simple";
      };
      components = {
        "hyperdrive" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bytestring-lexing
            hsPkgs.extensible-exceptions
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.pipes
            hsPkgs.pretty
          ];
        };
        exes = { "pong" = {}; };
      };
    }