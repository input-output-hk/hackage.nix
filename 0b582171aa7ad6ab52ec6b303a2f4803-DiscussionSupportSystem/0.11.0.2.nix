{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "DiscussionSupportSystem";
          version = "0.11.0.2";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "masakazu.minamiyama@gmail.com";
        author = "minamiyama1994";
        homepage = "https://github.com/minamiyama1994/DiscussionSupportSystem";
        url = "";
        synopsis = "Discussion support system";
        description = "";
        buildType = "Simple";
      };
      components = {
        "DiscussionSupportSystem" = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsers
            hsPkgs.html
            hsPkgs.blaze-markup
            hsPkgs.blaze-html
          ];
        };
        tests = {
          "doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.DiscussionSupportSystem
              hsPkgs.doctest
            ];
          };
        };
      };
    }