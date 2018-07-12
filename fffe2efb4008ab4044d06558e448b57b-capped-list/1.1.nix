{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "capped-list";
          version = "1.1";
        };
        license = "BSD-3-Clause";
        copyright = "2010 John Millikin <jmillikin@gmail.com>";
        maintainer = "John Millikin <jmillikin@gmail.com>";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A list-like type for lazy sequences, with a user-defined termination value.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "capped-list" = {
          depends  = [
            hsPkgs.base
            hsPkgs.empty
          ];
        };
      };
    }