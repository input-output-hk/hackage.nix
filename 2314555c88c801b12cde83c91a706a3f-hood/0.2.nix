{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hood";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2000 Andy Gill, (c) 2010 University of Kansas";
        maintainer = "Andy Gill <andygill@ku.edu>";
        author = "Andy Gill";
        homepage = "http://www.ittc.ku.edu/csdl/fpg/Hood";
        url = "";
        synopsis = "Debugging by observing in place";
        description = "Hood debugger, based on the idea of observing functions and structures as they are evaluated.";
        buildType = "Simple";
      };
      components = {
        "hood" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
        };
      };
    }