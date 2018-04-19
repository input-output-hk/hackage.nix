{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tellbot";
          version = "0.4.0.2";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
        author = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "IRC tellbot";
        description = "An IRC bot that can be used to create queuing message.\nIt also offers a simple administration IRC bot interface.";
        buildType = "Simple";
      };
      components = {
        exes = {
          tellbot = {
            depends  = [
              hsPkgs.base
              hsPkgs.network
              hsPkgs.errors
              hsPkgs.mtl
              hsPkgs.transformers
              hsPkgs.split
              hsPkgs.containers
              hsPkgs.bifunctors
              hsPkgs.time
            ];
          };
        };
      };
    }