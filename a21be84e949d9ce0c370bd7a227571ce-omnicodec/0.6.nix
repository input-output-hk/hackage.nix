{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "omnicodec";
          version = "0.6";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "Magnus Therning, 2012";
        maintainer = "magnus@therning.org";
        author = "Magnus Therning";
        homepage = "";
        url = "";
        synopsis = "data encoding and decoding command line utilities";
        description = "Two simple command line tools built on sandi.";
        buildType = "Simple";
      };
      components = {
        exes = {
          odec = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.bytestring
              hsPkgs.sandi
            ];
          };
          oenc = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.bytestring
              hsPkgs.sandi
            ];
          };
        };
      };
    }