{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "fclabels-monadlib";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Bardur Arantsson <bardur@scientician.net>";
        author = "Bardur Arantsson";
        homepage = "";
        url = "";
        synopsis = "MonadLib monadic interface for the \"fclabels\" package.";
        description = "A MonadLib-compatible monadic interface for the \"fclabels\" package.";
        buildType = "Simple";
      };
      components = {
        fclabels-monadlib = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.monadLib
            hsPkgs.fclabels
          ];
        };
      };
    }