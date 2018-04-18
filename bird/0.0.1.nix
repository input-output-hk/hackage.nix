{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bird";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Parker, Matt <moonmaster9000@gmail.com>";
        author = "Parker, Matt";
        homepage = "http://github.com/moonmaster9000/bird";
        url = "";
        synopsis = "A simple, sinatra-inspired web framework.";
        description = "Bird is a hack-compatible framework for simple websites.";
        buildType = "Simple";
      };
      components = {
        bird = {
          depends  = [
            hsPkgs.haskell98
            hsPkgs.process
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.base
            hsPkgs.hack
            hsPkgs.hyena
            hsPkgs.data-default
          ];
        };
        exes = { bird = {}; };
      };
    }