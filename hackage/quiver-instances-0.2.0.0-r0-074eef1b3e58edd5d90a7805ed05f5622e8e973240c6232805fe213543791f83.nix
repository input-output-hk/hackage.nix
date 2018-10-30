{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "quiver-instances";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Ivan.Miljenovic@gmail.com";
      author = "Ivan Lazar Miljenovic";
      homepage = "";
      url = "";
      synopsis = "Extra instances for Quiver";
      description = "Various extra instances for Quiver that aren't yet in the main library.\n\nCurrently this provides instances for the 'MonadThrow', 'MonadCatch'\nand 'MonadMask' classes from the\n<http://hackage.haskell.org/package/exceptions exceptions> library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.quiver)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
        ];
      };
    };
  }