{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "guarded-allocation";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://hub.darcs.net/thielema/guarded-allocation/";
      url = "";
      synopsis = "Memory allocation with added stress tests and integrity checks";
      description = "Provide adaptions of @mallocForeignPtrArray@ and @allocaArray@\nthat add stress tests and integrity checks.\n\nThere are three modules:\n\n* @Guarded.Plain@: exports the original allocation routines\n\n* @Guarded.Debug@: exports allocation routines that add stress and checks\n\n* @Guarded@: exports either @Guarded.Plain@ or @Guarded.Debug@\ndepending on the Cabal @debug@ flag.\n\nIt is intended that you always import the @Guarded@ module in user code\nand install a package version with enabled debug flag\nto a custom package database for debugging.\nIf you compile your user program you can choose production or debugging mode\nby choosing the default or the custom debugging package database,\nrespectively.\n\nThis package is inspired by the famous Amiga debug tool MungWall.\nThe Linux counterpart is Electric Fence.";
      buildType = "Simple";
    };
    components = {
      "guarded-allocation" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }