{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "mtlparse";
        version = "0.0.0.5";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "PAF01143@nifty.ne.jp";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "http://homepage3.nifty.com/salamander/mtlparse";
      url = "";
      synopsis = "parse library use mtl package";
      description = "parse library on mtl package\n\nParse and ParseT is like State and StateT\n\nthe package ease implementation of look-ahead look-behind include-file\nand so on.\n\nit is dirty code now";
      buildType = "Simple";
    };
    components = {
      "mtlparse" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }