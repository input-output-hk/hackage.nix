{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fuzzytime";
          version = "0.7.3";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "kamil.stachowski@gmail.com";
        author = "Kamil Stachowski";
        homepage = "";
        url = "";
        synopsis = "A clock and timer that tell the time in a more human way";
        description = "A clock and timer that tell the time in a more human way";
        buildType = "Simple";
      };
      components = {
        fuzzytime = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          fuzzytime = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.haskell98
              hsPkgs.old-time
              hsPkgs.process
            ];
          };
        };
      };
    }