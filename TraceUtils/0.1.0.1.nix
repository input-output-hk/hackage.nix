{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "TraceUtils";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "eyal.lotem@gmail.com";
        author = "Eyal Lotem";
        homepage = "https://github.com/Peaker/TraceUtils";
        url = "";
        synopsis = "Functions that should have been in Debug.Trace";
        description = "Functions that should have been in Debug.Trace";
        buildType = "Simple";
      };
      components = {
        TraceUtils = {
          depends  = [ hsPkgs.base ];
        };
      };
    }