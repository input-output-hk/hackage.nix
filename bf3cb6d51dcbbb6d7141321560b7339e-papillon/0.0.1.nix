{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "papillon";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        homepage = "yet";
        url = "";
        synopsis = "packrat parser";
        description = "blah blah blah";
        buildType = "Simple";
      };
      components = {
        "papillon" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.monads-tf
          ];
        };
        exes = {
          "papillon" = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
              hsPkgs.monads-tf
            ];
          };
        };
      };
    }