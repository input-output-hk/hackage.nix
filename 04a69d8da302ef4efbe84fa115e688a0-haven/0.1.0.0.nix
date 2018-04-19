{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haven";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "maintenance@obsidian.systems";
        author = "Ali Abrar, Will Fancher";
        homepage = "";
        url = "";
        synopsis = "Recursively retrieve maven dependencies";
        description = "A haskell project that retrieves maven package dependencies recursively given a starting set of packages. The primary output format is a list of nix sets describing the maven packages.";
        buildType = "Simple";
      };
      components = {
        exes = {
          haven = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.http-conduit
              hsPkgs.http-types
              hsPkgs.mtl
              hsPkgs.SHA
              hsPkgs.xml
            ];
          };
        };
      };
    }