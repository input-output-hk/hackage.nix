{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "zippo";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "brandon.m.simmons@gmail.com";
        author = "Brandon Simmons";
        homepage = "http://brandon.si/code/zippo/";
        url = "";
        synopsis = "A simple lens-based, generic, heterogenous, type-checked zipper library";
        description = "This light-weight library provides a basic, but fully-type-checked\nzipper implementation, suitable for any algebraic data structure.\nOur implementation has no notion of \\\"left\\\" and \\\"right\\\", and\ninstead uses lenses (from the \"yall\" package) to indicate directions\nto \\\"navigate down to\\\".\n\nFor a similar approach with many more features, but less type-safety\nsee \"pez\".\n\n/UPDATE/: I have stopped developing this package; instead look into \"lens\" v3.0 which includes similar functionality\n\n/CHANGES/: 0.2 to 0.3:\n\n- depend on new yall, depending on new categories";
        buildType = "Simple";
      };
      components = {
        zippo = {
          depends  = [
            hsPkgs.mtl
            hsPkgs.yall
            hsPkgs.base
          ];
        };
      };
    }