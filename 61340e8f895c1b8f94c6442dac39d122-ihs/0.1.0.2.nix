{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ihs";
          version = "0.1.0.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "2017 Daniel Mendler";
        maintainer = "Daniel Mendler <mail@daniel-mendler.de>";
        author = "Daniel Mendler <mail@daniel-mendler.de>";
        homepage = "https://github.com/minad/ihs";
        url = "";
        synopsis = "Interpolated Haskell";
        description = "This abomination allows you to quickly generate text files in a style similar to ERB from Ruby or PHP. But you stay typesafe!";
        buildType = "Simple";
      };
      components = {
        exes = {
          "ihs" = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
            ];
          };
        };
      };
    }