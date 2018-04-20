{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "isevaluated";
          version = "0.3.0.1";
        };
        license = "MIT";
        copyright = "(c) 2009, 2010 Svein Ove Aas and Bertram Felgenhauer";
        maintainer = "Bertram Felgenhauer <int-e@gmx.de>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Check whether a value has been evaluated";
        description = "An IO action to check whether some value has been evaluated.\n\nIf isEvaluated returns True, evaluating it to weak-head normal\nform won't throw exceptions and take constant time.";
        buildType = "Simple";
      };
      components = {
        isevaluated = {
          depends  = [
            hsPkgs.base
            hsPkgs.vacuum
          ];
        };
      };
    }