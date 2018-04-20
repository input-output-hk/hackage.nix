{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "snaplet-oauth";
          version = "0.0.6";
        };
        license = "BSD-3-Clause";
        copyright = "Haisheng,Wu";
        maintainer = "freizl@gmail.com";
        author = "Haisheng,Wu";
        homepage = "https://github.com/HaskellCNOrg/snaplet-oauth";
        url = "";
        synopsis = "snaplet-oauth";
        description = "This lib is in Alpha status and APIs are likely to be changed.";
        buildType = "Simple";
      };
      components = {
        snaplet-oauth = {
          depends  = [
            hsPkgs.MonadCatchIO-mtl
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bytestring-show
            hsPkgs.data-lens
            hsPkgs.data-lens-template
            hsPkgs.failure
            hsPkgs.hashable
            hsPkgs.heist
            hsPkgs.hoauth2
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.snap
            hsPkgs.snap-core
            hsPkgs.snap-loader-dynamic
            hsPkgs.snap-loader-static
            hsPkgs.text
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          oauth-unit-tests = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.bytestring-show
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.text
              hsPkgs.snaplet-oauth
            ];
          };
        };
      };
    }