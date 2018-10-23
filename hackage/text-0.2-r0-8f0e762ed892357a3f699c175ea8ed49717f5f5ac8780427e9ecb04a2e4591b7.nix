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
        name = "text";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2008-2009 Tom Harper, 2009 Bryan O'Sullivan";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>\nTom Harper <rtharper@aftereternity.co.uk>\nDuncan Coutts <duncan@haskell.org>";
      author = "Tom Harper <rtharper@aftereternity.co.uk>";
      homepage = "";
      url = "";
      synopsis = "An efficient packed Unicode text type";
      description = "An efficient packed Unicode text type.";
      buildType = "Simple";
    };
    components = {
      "text" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "6.10") [
          (hsPkgs.ghc-prim)
          (hsPkgs.base)
        ];
      };
    };
  }