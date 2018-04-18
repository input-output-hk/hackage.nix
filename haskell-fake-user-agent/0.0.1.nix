{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-fake-user-agent";
          version = "0.0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "contact@grzegorzgolda.com";
        author = "grzegorzgoldapl";
        homepage = "";
        url = "";
        synopsis = "Simple library for retrieving current user agent strings";
        description = "";
        buildType = "Simple";
      };
      components = {
        haskell-fake-user-agent = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.bytestring
            hsPkgs.wreq
            hsPkgs.tagsoup
          ];
        };
      };
    }