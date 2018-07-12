{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "foreign-store";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2014 Chris Done";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "https://github.com/chrisdone/foreign-store";
        url = "";
        synopsis = "Store a stable pointer in a foreign context to be retrieved later. Persists through GHCi reloads.";
        description = "Store a stable pointer in a foreign context to be retrieved later. Persists through GHCi reloads.";
        buildType = "Simple";
      };
      components = {
        "foreign-store" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }