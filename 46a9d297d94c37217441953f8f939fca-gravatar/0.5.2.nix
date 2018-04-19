{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "gravatar";
          version = "0.5.2";
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
        gravatar = {
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