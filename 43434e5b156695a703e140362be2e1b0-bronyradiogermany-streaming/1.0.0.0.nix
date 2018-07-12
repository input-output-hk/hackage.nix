{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bronyradiogermany-streaming";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "darcs@m.doomanddarkness.eu";
        author = "Marvin Cohrs";
        homepage = "";
        url = "";
        synopsis = "Streaming interface for the BronyRadioGermany API.";
        description = "This is a streaming interface for the API of BronyRadioGermany. Features: get the currently played song, the entire song history, the AutoDj track list, vote statistics, and the raw audio streams; it can also post up- and downvotes, as well as song requests. If you prefer conduit over streaming, please have a look at bronyradiogermany-conduit.";
        buildType = "Simple";
      };
      components = {
        "bronyradiogermany-streaming" = {
          depends  = [
            hsPkgs.base
            hsPkgs.streaming
            hsPkgs.streaming-bytestring
            hsPkgs.streaming-utils
            hsPkgs.bronyradiogermany-common
            hsPkgs.uuid
            hsPkgs.text
            hsPkgs.aeson
            hsPkgs.time
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.http-types
          ];
        };
      };
    }