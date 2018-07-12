{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tao";
          version = "1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Jason Shipman";
        author = "Jason Shipman";
        homepage = "https://github.com/jship/tao#readme";
        url = "";
        synopsis = "Type-level assertion operators.";
        description = "Type-level unit testing via assertion operators/functions.";
        buildType = "Simple";
      };
      components = {
        "tao" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }