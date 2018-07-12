{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "gravatar";
          version = "0.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "me@pbrisbin.com";
        author = "Patrick Brisbin";
        homepage = "http://github.com/pbrisbin/gravatar";
        url = "";
        synopsis = "Look up gravatar image urls by email address";
        description = "Look up gravatar image urls by email address";
        buildType = "Simple";
      };
      components = {
        "gravatar" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.pureMD5
            hsPkgs.HTTP
            hsPkgs.data-default
          ];
        };
      };
    }