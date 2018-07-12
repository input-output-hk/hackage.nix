{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "th-utilities";
          version = "0.1.1.1";
        };
        license = "MIT";
        copyright = "2016 FP Complete";
        maintainer = "Michael Sloan <sloan@fpcomplete.com>";
        author = "";
        homepage = "https://github.com/fpco/th-utilities#readme";
        url = "";
        synopsis = "Collection of useful functions for use with Template Haskell";
        description = "";
        buildType = "Simple";
      };
      components = {
        "th-utilities" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.primitive
            hsPkgs.syb
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.th-orphans
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.primitive
              hsPkgs.syb
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.th-orphans
              hsPkgs.th-utilities
              hsPkgs.hspec
              hsPkgs.vector
            ];
          };
        };
      };
    }