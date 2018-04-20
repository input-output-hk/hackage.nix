{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "slug";
          version = "0.1.7";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov92@gmail.com>";
        author = "Mark Karpov <markkarpov92@gmail.com>";
        homepage = "https://github.com/mrkkrp/slug";
        url = "";
        synopsis = "Type-safe slugs for Yesod ecosystem";
        description = "Type-safe slugs for Yesod ecosystem.";
        buildType = "Simple";
      };
      components = {
        slug = {
          depends  = [
            hsPkgs.QuickCheck
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.exceptions
            hsPkgs.http-api-data
            hsPkgs.path-pieces
            hsPkgs.persistent
            hsPkgs.text
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.exceptions
              hsPkgs.hspec
              hsPkgs.http-api-data
              hsPkgs.path-pieces
              hsPkgs.slug
              hsPkgs.text
            ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
          };
        };
      };
    }