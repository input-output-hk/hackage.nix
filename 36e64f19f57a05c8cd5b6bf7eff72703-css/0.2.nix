{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "css";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "2010 Chris Done";
        maintainer = "";
        author = "Chris Done <chrisdone@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Minimal monadic CSS DSL.";
        description = "Minimal monadic CSS DSL. Type-safe property values to come later.";
        buildType = "Simple";
      };
      components = {
        css = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.mtl
          ];
        };
      };
    }