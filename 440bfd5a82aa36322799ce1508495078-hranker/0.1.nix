{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hranker";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) Robin Green 2009";
        maintainer = "Robin Green <greenrd@greenrd.org>";
        author = "Robin Green";
        homepage = "";
        url = "";
        synopsis = "Basic utility for ranking a list of items";
        description = "A CLI utility for helping the user to rank a list of items in order.\nTies are permitted.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hranker = {
            depends  = [
              hsPkgs.base
              hsPkgs.HCL
              hsPkgs.HCL
              hsPkgs.NonEmpty
              hsPkgs.NonEmpty
            ];
          };
        };
      };
    }