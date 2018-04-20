{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ShowF";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013 by Conal Elliott";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "";
        url = "";
        synopsis = "Show for * -> *";
        description = "Provides a Show-like class for * -> *";
        buildType = "Simple";
      };
      components = {
        ShowF = {
          depends  = [ hsPkgs.base ];
        };
      };
    }