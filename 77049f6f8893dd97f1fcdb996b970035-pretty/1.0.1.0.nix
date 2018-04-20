{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "pretty";
          version = "1.0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "libraries@haskell.org";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Pretty-printing library";
        description = "This package contains John Hughes's pretty-printing library,\nheavily modified by Simon Peyton Jones.";
        buildType = "Simple";
      };
      components = {
        pretty = {
          depends  = [ hsPkgs.base ];
        };
      };
    }