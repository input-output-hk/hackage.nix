{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hood";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2000 Andy Gill, (c) 2010-2015 University of Kansas, (c) 2013-2015 Maarten Faddegon";
        maintainer = "Andy Gill <andygill@ku.edu>";
        author = "Andy Gill";
        homepage = "http://ku-fpg.github.io/software/hood";
        url = "";
        synopsis = "Debugging by observing in place";
        description = "Hood debugger, based on the idea of observing functions and structures as they are evaluated.";
        buildType = "Simple";
      };
      components = {
        hood = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.FPretty
            hsPkgs.ghc-prim
          ];
        };
        tests = {
          hood-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.ghc-prim
              hsPkgs.hood
            ];
          };
        };
      };
    }