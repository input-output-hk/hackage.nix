{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pipes-courier";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Kyle Van Berendonck";
        maintainer = "kvanberendonck@gmail.com";
        author = "Kyle Van Berendonck";
        homepage = "http://github.com/kvanberendonck/pipes-courier";
        url = "";
        synopsis = "Pipes utilities for interfacing with the courier message-passing framework.";
        description = "Pipes utilities for interfacing with the @courier@ message-passing framework.\nThis package implements shortcut fusion for both pushing and pulling streams.";
        buildType = "Simple";
      };
      components = {
        "pipes-courier" = {
          depends  = [
            hsPkgs.base
            hsPkgs.courier
            hsPkgs.pipes
          ];
        };
      };
    }