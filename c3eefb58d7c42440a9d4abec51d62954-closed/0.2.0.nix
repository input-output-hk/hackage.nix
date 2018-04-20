{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "closed";
          version = "0.2.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Front Row Education <engineering@frontrowed.com>";
        author = "Chris Parks <chris@frontrowed.com>";
        homepage = "https://github.com/frontrowed/closed#readme";
        url = "";
        synopsis = "Integers bounded by a closed interval";
        description = "Integers bounded by a closed interval";
        buildType = "Simple";
      };
      components = {
        closed = {
          depends  = [
            hsPkgs.QuickCheck
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.cassava
            hsPkgs.deepseq
            hsPkgs.hashable
            hsPkgs.persistent
            hsPkgs.text
          ];
        };
        tests = {
          readme = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.cassava
              hsPkgs.closed
              hsPkgs.deepseq
              hsPkgs.hashable
              hsPkgs.hspec
              hsPkgs.markdown-unlit
              hsPkgs.persistent
              hsPkgs.text
              hsPkgs.vector
            ];
          };
        };
      };
    }