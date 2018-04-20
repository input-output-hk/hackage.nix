{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "redHandlers";
          version = "0.1";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "none";
        author = "RedNucleus (see AUTHORS)";
        homepage = "";
        url = "";
        synopsis = "Monadic HTTP request handlers combinators to build a standalone web apps.";
        description = "Monadic HTTP request handlers combinators to build a standalone web apps. Most of them deal with request data.\nSome of them allow mapping part of the URL to public folders in the file system. There is also a combinator for\nsending files efficiently in the response (a fork of the HTTP library was necessary for this, included here).";
        buildType = "Simple";
      };
      components = {
        redHandlers = {
          depends  = [
            hsPkgs.base
            hsPkgs.cgi
            hsPkgs.network
            hsPkgs.stm
            hsPkgs.containers
            hsPkgs.old-time
            hsPkgs.bytestring
            hsPkgs.parsec
            hsPkgs.unix
            hsPkgs.MaybeT
            hsPkgs.mtl
            hsPkgs.haskell98
            hsPkgs.xhtml
            hsPkgs.array
          ];
        };
      };
    }