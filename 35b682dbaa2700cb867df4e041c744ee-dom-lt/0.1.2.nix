{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dom-lt";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Matt Morrow, 2009";
        maintainer = "Matt Morrow <morrow@moonpatio.com>";
        author = "Matt Morrow";
        homepage = "";
        url = "";
        synopsis = "The Lengauer-Tarjan graph dominators algorithm.";
        description = ".";
        buildType = "Simple";
      };
      components = {
        dom-lt = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
          ];
        };
      };
    }