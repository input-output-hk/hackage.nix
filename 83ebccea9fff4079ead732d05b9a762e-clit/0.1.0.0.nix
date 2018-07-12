{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "clit";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Vanessa McHale";
        maintainer = "tmchale@wisc.edu";
        author = "Vanessa McHale";
        homepage = "https://github.com/vmchale/command-line-tweeter#readme";
        url = "";
        synopsis = "Post tweets that you pipe to stdin";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "clit" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.http-client-tls
            hsPkgs.http-client
            hsPkgs.http-types
            hsPkgs.authenticate-oauth
            hsPkgs.bytestring
            hsPkgs.split
            hsPkgs.optparse-applicative
          ];
        };
        exes = {
          "tweet" = {
            depends  = [
              hsPkgs.base
              hsPkgs.clit
            ];
          };
        };
      };
    }