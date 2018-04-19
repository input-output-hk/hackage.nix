{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-elm";
          version = "0.1.0.1";
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
            hsPkgs.lens
            hsPkgs.servant
            hsPkgs.servant-foreign
            hsPkgs.text
            hsPkgs.elm-export
          ];
        };
        tests = {
          servant-elm-test = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.data-default
              hsPkgs.elm-export
              hsPkgs.hspec
              hsPkgs.servant
              hsPkgs.servant-elm
            ];
          };
        };
      };
    }