{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "supercollider-ht";
        version = "0.0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "Henning Thielemann, 2008";
      maintainer = "Henning Thielemann <supercollider@henning-thielemann.de>";
      author = "Henning Thielemann <supercollider@henning-thielemann.de>";
      homepage = "http://darcs.haskell.org/supercollider-ht";
      url = "";
      synopsis = "Haskell SuperCollider utilities";
      description = "Some additional modules I regular use\nin connection with the SuperCollider wrapper hsc3 by Rohan Drape.\nIt contains:\n\n* a @Transport@ type for writing to files (that's however less important, since @hsc3@ itself does now support SuperCollider Non-Real-Time mode)\n\n* a @Reader@ monad that hides the handle for interaction with the SuperCollider server\n\n* play routines that use this monad.\n\n* example effects";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.hosc)
          (hsPkgs.hsc3)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
        ] ++ (if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.process)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }