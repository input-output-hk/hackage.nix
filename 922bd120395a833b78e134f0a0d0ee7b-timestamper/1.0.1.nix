{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "timestamper";
          version = "1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "kyle@metacircular.net";
        author = "K. Isom";
        homepage = "https://github.com/kisom/timestamper";
        url = "";
        synopsis = "Read standard input and prepend each line with a timestamp";
        description = "timestamper is a utility to apply timestamps to\nstandard input.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "timestamper" = {
            depends  = [
              hsPkgs.base
              hsPkgs.old-locale
              hsPkgs.time
            ];
          };
        };
      };
    }