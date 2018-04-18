{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "g-npm";
          version = "0.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "neurogeekster@gmail.com";
        author = "Jesus Rivero (Neurogeek)";
        homepage = "";
        url = "https://github.com/neurogeek/g-npm";
        synopsis = "Generate Gentoo ebuilds from NodeJS/npm packages.";
        description = "Generate Gentoo ebuilds from NodeJS/npm packages.";
        buildType = "Simple";
      };
      components = {
        exes = {
          g-npm = {
            depends  = [
              hsPkgs.base
              hsPkgs.HTTP
              hsPkgs.json
            ];
          };
        };
      };
    }