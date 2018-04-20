{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "bytestring-class";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "";
        url = "";
        synopsis = "Classes for automatic conversion to and from strict and lazy bytestrings. (deprecated)";
        description = "In theory, this allows the design of more data-agnostic\nAPIs.";
        buildType = "Simple";
      };
      components = {
        bytestring-class = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.utf8-string
          ];
        };
      };
    }