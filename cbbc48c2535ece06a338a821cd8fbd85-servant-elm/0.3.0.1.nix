{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
      integration = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-elm";
          version = "0.3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2015-2016 Matt Bray";
        maintainer = "mattjbray@gmail.com";
        author = "Matt Bray";
        homepage = "http://github.com/mattjbray/servant-elm#readme";
        url = "";
        synopsis = "Automatically derive Elm functions to query servant webservices.";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        servant-elm = {
          depends  = [
            hsPkgs.base
            hsPkgs.elm-export
            hsPkgs.lens
            hsPkgs.servant
            hsPkgs.servant-foreign
            hsPkgs.text
            hsPkgs.wl-pprint-text
          ];
        };
        exes = {
          books-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.elm-export
              hsPkgs.servant
              hsPkgs.servant-elm
            ];
          };
          e2e-tests-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.elm-export
              hsPkgs.servant
              hsPkgs.servant-elm
            ];
          };
          giphy-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.elm-export
              hsPkgs.servant
              hsPkgs.servant-elm
              hsPkgs.text
            ];
          };
          readme-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.elm-export
              hsPkgs.servant
              hsPkgs.servant-elm
            ];
          };
        };
        tests = {
          servant-elm-test = {
            depends  = [
              hsPkgs.Diff
              hsPkgs.HUnit
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.elm-export
              hsPkgs.hspec
              hsPkgs.servant
              hsPkgs.servant-elm
              hsPkgs.text
            ];
          };
          servant-elm-test-integration = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.elm-export
              hsPkgs.hspec
              hsPkgs.interpolate
              hsPkgs.mockery
              hsPkgs.process
              hsPkgs.servant
              hsPkgs.servant-elm
              hsPkgs.text
            ];
          };
        };
      };
    }