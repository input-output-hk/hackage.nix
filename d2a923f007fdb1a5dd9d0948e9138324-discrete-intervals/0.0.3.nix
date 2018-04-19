{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "discrete-intervals";
          version = "0.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Daniel Cartwright <dcartwright@layer3com.com>";
        author = "Daniel Cartwright";
        homepage = "http://github.com/chessai/discrete-intervals";
        url = "";
        synopsis = "Discrete Intervals";
        description = "A 'Data.Interval' is a closed, convex set of discrete values.";
        buildType = "Simple";
      };
      components = {
        discrete-intervals = {
          depends  = [ hsPkgs.base ];
        };
      };
    }