{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ltl";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tom Hawkins <tomahawkins@gmail.com>";
        author = "Tom Hawkins <tomahawkins@gmail.com>";
        homepage = "http://tomahawkins.org";
        url = "";
        synopsis = "Using linear temporal logic (LTL) to verify embedded software and hardware.";
        description = "TODO";
        buildType = "Simple";
      };
      components = {
        "ltl" = {
          depends  = [
            hsPkgs.base
            hsPkgs.vcd
          ];
        };
      };
    }