{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "exception-hierarchy";
          version = "0.0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        homepage = "yet";
        url = "";
        synopsis = "Exception type hierarchy with TemplateHaskell";
        description = "see sample code in samples/";
        buildType = "Simple";
      };
      components = {
        exception-hierarchy = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
      };
    }