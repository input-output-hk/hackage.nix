{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "extract-dependencies";
          version = "0.2.0.1";
        };
        license = "MIT";
        copyright = "2015 André Barnabá";
        maintainer = "asakeron@gmail.com";
        author = "André Barnabá";
        homepage = "https://github.com/yamadapc/stack-run-auto";
        url = "";
        synopsis = "Given a hackage package outputs the list of its dependencies.";
        description = "Given a hackage package outputs the list of its dependencies. See our GitHub README. This is part of stack-run-auto.";
        buildType = "Simple";
      };
      components = {
        "extract-dependencies" = {
          depends  = [
            hsPkgs.base
            hsPkgs.async
            hsPkgs.containers
            hsPkgs.Cabal
            hsPkgs.package-description-remote
          ];
        };
        exes = {
          "extract-dependencies" = {
            depends  = [
              hsPkgs.base
              hsPkgs.async
              hsPkgs.containers
              hsPkgs.Cabal
              hsPkgs.package-description-remote
            ];
          };
        };
      };
    }