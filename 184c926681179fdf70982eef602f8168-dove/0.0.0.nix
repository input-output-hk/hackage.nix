{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dove";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Tom Hawkins  <tomahawkins@gmail.com>";
        author = "Tom Hawkins  <tomahawkins@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "The Dove verification language.";
        description = "";
        buildType = "Simple";
      };
      components = {
        dove = {
          depends  = [
            hsPkgs.base
            hsPkgs.acl2
          ];
        };
      };
    }