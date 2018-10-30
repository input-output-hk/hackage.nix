{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { use_mtl = false; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "fix-parser-simple";
        version = "15320.3";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "strake888@gmail.com";
      author = "Matthew Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Simple fix-expression parser";
      description = "Simple fix-expression parser";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
        ] ++ (if flags.use_mtl
          then [ (hsPkgs.mtl) ]
          else [ (hsPkgs.mmtl) ]);
      };
    };
  }