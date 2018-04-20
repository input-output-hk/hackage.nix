{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "event-driven";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "library for event driven programming";
        description = "library for event driven programming";
        buildType = "Simple";
      };
      components = {
        event-driven = {
          depends  = [
            hsPkgs.yjtools
            hsPkgs.monads-tf
            hsPkgs.base
          ];
        };
      };
    }