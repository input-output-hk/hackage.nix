{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "mtlparse";
          version = "0.1.0";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "PAF01143@nifty.ne.jp";
        author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        homepage = "http://homepage3.nifty.com/salamander/second/projects/mtlparse/";
        url = "";
        synopsis = "parse library using mtl package";
        description = "parse library on mtl package\n\nParse and ParseT is like State and StateT\n\nThe package ease implementation of look-ahead look-behind\nand so on.";
        buildType = "Simple";
      };
      components = {
        mtlparse = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }