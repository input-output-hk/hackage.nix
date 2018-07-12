{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "omnicodec";
          version = "0.7";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Magnus Therning, 2012";
        maintainer = "magnus@therning.org";
        author = "Magnus Therning";
        homepage = "";
        url = "";
        synopsis = "data encoding and decoding command line utilities";
        description = "Two simple command line tools built on sandi\n(http://hackage.haskell.org/package/sandi).";
        buildType = "Simple";
      };
      components = {
        exes = {
          "odec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.conduit
              hsPkgs.bytestring
              hsPkgs.sandi
              hsPkgs.transformers
            ];
          };
          "oenc" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.conduit
              hsPkgs.bytestring
              hsPkgs.sandi
              hsPkgs.transformers
            ];
          };
        };
      };
    }