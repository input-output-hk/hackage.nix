{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "XAttr";
        version = "0.1.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "tensor5@gmail.com";
      author = "Nicola Squartini <tensor5@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Read, set, and list extended attributes";
      description = "This package is obsolete. Use <http://hackage.haskell.org/package/linux-xattr> instead.";
      buildType = "Simple";
    };
    components = {
      "XAttr" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unix)
        ];
      };
    };
  }