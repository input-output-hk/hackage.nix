{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "kansas-comet";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013 The University of Kansas";
        maintainer = "Andrew Gill <andygill@ku.edu>";
        author = "Andrew Gill <andygill@ku.edu>, Andrew Farmer <anfarmer@ku.edu>";
        homepage = "https://github.com/ku-fpg/kansas-comet/";
        url = "";
        synopsis = "A JavaScript push mechanism based on the comet idiom";
        description = "A transport-level remote JavaScript RESTful push mechanism.";
        buildType = "Simple";
      };
      components = {
        kansas-comet = {
          depends  = [
            hsPkgs.base
            hsPkgs.unordered-containers
            hsPkgs.aeson
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.scotty
            hsPkgs.stm
            hsPkgs.transformers
            hsPkgs.text
            hsPkgs.time
          ];
        };
      };
    }