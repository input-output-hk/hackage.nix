{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "persistent-template";
          version = "0.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman <michael@snoyman.com>";
        author = "Michael Snoyman <michael@snoyman.com>";
        homepage = "http://www.yesodweb.com/";
        url = "";
        synopsis = "Type-safe, non-relational, multi-backend persistence.";
        description = "This library provides just the general interface and helper functions. You must use a specific backend in order to make this useful.";
        buildType = "Simple";
      };
      components = {
        persistent-template = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.persistent
            hsPkgs.web-routes-quasi
            hsPkgs.monad-control
            hsPkgs.text
          ];
        };
      };
    }