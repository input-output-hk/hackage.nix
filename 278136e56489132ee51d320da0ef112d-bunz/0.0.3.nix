{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bunz";
          version = "0.0.3";
        };
        license = "MIT";
        copyright = "(c) 2017 Sendy Halim";
        maintainer = "Sendy Halim <sendyhalim93@gmail.com>";
        author = "Sendy Halim <sendyhalim93@gmail.com>";
        homepage = "https://github.com/sendyhalim/bunz";
        url = "";
        synopsis = "CLI tool to beautify JSON string.";
        description = "CLI tool to beautify JSON string.";
        buildType = "Simple";
      };
      components = {
        "bunz" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
          ];
        };
        exes = {
          "bunz" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bunz
              hsPkgs.text
              hsPkgs.unix
              hsPkgs.cmdargs
            ];
          };
        };
        tests = {
          "bunz-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bunz
              hsPkgs.doctest
              hsPkgs.hspec
            ];
          };
        };
      };
    }