{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "snaplet-acid-state";
          version = "0.2.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mightybyte@gmail.com";
        author = "Doug Beardsley";
        homepage = "https://github.com/mightybyte/snaplet-acid-state";
        url = "";
        synopsis = "acid-state snaplet for Snap Framework";
        description = "This snaplet makes it easy to use acid-state in a Snap\napplication.";
        buildType = "Simple";
      };
      components = {
        snaplet-acid-state = {
          depends  = [
            hsPkgs.acid-state
            hsPkgs.base
            hsPkgs.snap
            hsPkgs.text
          ];
        };
      };
    }