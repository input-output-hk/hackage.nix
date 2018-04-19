{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "ranges";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "George Pollard <porges@porg.es>";
        author = "George Pollard <porges@porg.es>";
        homepage = "";
        url = "";
        synopsis = "";
        description = "Ranges and various functions on them.";
        buildType = "Simple";
      };
      components = {
        ranges = {
          depends  = [ hsPkgs.base ];
        };
      };
    }