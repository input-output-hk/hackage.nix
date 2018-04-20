{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "quandl-api";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Peter van den Brand";
        maintainer = "Peter van den Brand <peter@vdbrand.nl>";
        author = "Peter van den Brand <peter@vdbrand.nl>";
        homepage = "https://github.com/pvdbrand/quandl-api";
        url = "";
        synopsis = "Quandl.com API library";
        description = "This library provides an easy way to download data from Quandl.com.";
        buildType = "Simple";
      };
      components = {
        quandl-api = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-types
            hsPkgs.http-conduit
            hsPkgs.blaze-builder
            hsPkgs.unordered-containers
            hsPkgs.old-locale
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.time
            hsPkgs.syb
            hsPkgs.aeson
          ];
        };
      };
    }