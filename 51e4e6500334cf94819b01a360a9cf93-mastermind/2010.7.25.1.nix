{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "mastermind";
          version = "2010.7.25.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2010 Paolo Veronelli";
        maintainer = "Paolo Veronelli <paolo.veronelli@gmail.com>";
        author = "";
        homepage = "http://wiki.github.com/paolino/mastermind";
        url = "";
        synopsis = "console mastermind decypher";
        description = "a 5 guess decypher for mastermind game";
        buildType = "Simple";
      };
      components = {
        exes = {
          mastermind = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
            ];
          };
        };
      };
    }