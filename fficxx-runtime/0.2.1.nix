{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fficxx-runtime";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
        author = "Ian-Woo Kim";
        homepage = "";
        url = "";
        synopsis = "Runtime for fficxx-generated library";
        description = "Runtime for fficxx-generated library";
        buildType = "Simple";
      };
      components = {
        fficxx-runtime = {
          depends  = [ hsPkgs.base ];
        };
      };
    }