{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "hellage";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "voker57@gmail.com";
        author = "Voker57";
        homepage = "http://bitcheese.net/wiki/hellnet/hellage";
        url = "";
        synopsis = "Distributed hackage mirror";
        description = "Distributed hackage mirror, based on Hellnet.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "hellage" = {
            depends  = [
              hsPkgs.hellnet
              hsPkgs.Lucu
              hsPkgs.network
              hsPkgs.base
              hsPkgs.hjson
              hsPkgs.hjpath
              hsPkgs.regex-pcre
              hsPkgs.safe
              hsPkgs.mtl
              hsPkgs.bytestring
            ];
          };
          "hellage-genmeta" = {
            depends  = [
              hsPkgs.hellnet
              hsPkgs.hjpath
              hsPkgs.hjson
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.safe
              hsPkgs.bytestring
              hsPkgs.HTTP
              hsPkgs.stm
              hsPkgs.containers
              hsPkgs.utf8-string
              hsPkgs.tar
              hsPkgs.zlib
              hsPkgs.directory
              hsPkgs.safe
            ];
          };
        };
      };
    }