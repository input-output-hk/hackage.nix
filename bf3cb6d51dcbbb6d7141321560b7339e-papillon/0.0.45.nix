{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "papillon";
          version = "0.0.45";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        homepage = "https://skami.iocikun.jp/haskell/packages/papillon";
        url = "";
        synopsis = "packrat parser";
        description = "blah blah blah";
        buildType = "Simple";
      };
      components = {
        papillon = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.monads-tf
            hsPkgs.transformers
          ];
        };
        exes = {
          papillon = {
            depends  = [
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.base
              hsPkgs.template-haskell
              hsPkgs.monads-tf
              hsPkgs.transformers
              hsPkgs.papillon
            ];
          };
        };
      };
    }