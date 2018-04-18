{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "native";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Author name here";
        maintainer = "example@example.com";
        author = "Author name here";
        homepage = "https://github.com/githubuser/native#readme";
        url = "";
        synopsis = "Initial project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        native = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.shelly
            hsPkgs.text
            hsPkgs.bytestring
          ];
        };
        exes = {
          native-exe = {
            depends  = [
              hsPkgs.base
              hsPkgs.native
              hsPkgs.optparse-applicative
            ];
          };
        };
        tests = {
          native-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.native
            ];
          };
        };
      };
    }