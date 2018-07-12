{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "optparse-version";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 David Smith";
        maintainer = "shmish111@gmail.com";
        author = "David Smith";
        homepage = "https://github.com/shmish111/optparse-version";
        url = "";
        synopsis = "";
        description = "Simple Option to display version text file";
        buildType = "Simple";
      };
      components = {
        "optparse-version" = {
          depends  = [
            hsPkgs.base
            hsPkgs.optparse-applicative
          ];
        };
        exes = {
          "optparse-version-exe" = {
            depends  = [
              hsPkgs.base
              hsPkgs.file-embed
              hsPkgs.optparse-version
              hsPkgs.optparse-applicative
            ];
          };
        };
      };
    }