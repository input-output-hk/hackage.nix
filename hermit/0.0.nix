{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hermit";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Andy Gill <andygill@ku.edu>";
        author = "Andy Gill";
        homepage = "";
        url = "";
        synopsis = "Haskell Equational Reasoning Model-to-Implementation Tunnel";
        description = "HERMIT uses Haskell to express semi-formal models,\nefficient implementations, and provide a bridging DSL\nto describe via stepwise refinement the connection between\nthese models and implementations. The key transformation\nin the bridging DSL is the worker/wrapper transformation.";
        buildType = "Simple";
      };
      components = {
        hermit = {
          depends  = [ hsPkgs.base ];
        };
      };
    }