{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "mastermind";
          version = "2010.7.25";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2010 Paolo Veronelli";
        maintainer = "Paolo Veronelli <paolo.veronelli@gmail.com>";
        author = "";
        homepage = "http://wiki.github.com/paolino/mastermind";
        url = "";
        synopsis = "console mastermind decrypter";
        description = "a 5 guess decrypter for mastermind game";
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