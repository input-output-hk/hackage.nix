{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "firefly-example";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Chris Penner";
        maintainer = "christopher.penner@gmail.com";
        author = "Chris Penner";
        homepage = "https://github.com/ChrisPenner/Firefly#readme";
        url = "";
        synopsis = "A simple example using Firefly";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          firefly-example-exe = {
            depends  = [
              hsPkgs.base
              hsPkgs.firefly
              hsPkgs.text
              hsPkgs.aeson
              hsPkgs.blaze-html
              hsPkgs.mtl
              hsPkgs.wai
            ];
          };
        };
      };
    }