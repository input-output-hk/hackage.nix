{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "quiver-instances";
        version = "0.1.0.1";
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
      "quiver-instances" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.quiver)
          (hsPkgs.transformers)
        ];
      };
    };
  }