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
          name = "forma";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov92@gmail.com>";
        author = "Mark Karpov <markkarpov92@gmail.com>";
        homepage = "https://github.com/mrkkrp/forma";
        url = "";
        synopsis = "Parse and validate forms in JSON format";
        description = "Parse and validate forms in JSON format.";
        buildType = "Simple";
      };
      components = {
        "forma" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.unordered-containers
          ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.forma
              hsPkgs.hspec
              hsPkgs.mtl
              hsPkgs.text
            ];
          };
        };
      };
    }