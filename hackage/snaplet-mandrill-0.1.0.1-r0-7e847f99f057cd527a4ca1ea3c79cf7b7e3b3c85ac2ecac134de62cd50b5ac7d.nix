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
      specVersion = "1.14.0";
      identifier = {
        name = "snaplet-mandrill";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Parnell Springmeyer";
      maintainer = "parnell@digitalmentat.com";
      author = "Parnell Springmeyer";
      homepage = "https://github.com/ixmatus/snaplet-mandrill";
      url = "http://hackage.haskell.org/package/snaplet-mandrill";
      synopsis = "Snap framework snaplet for the Mandrill API library.";
      description = "`snaplet-mandrill` is a snaplet for the Snap web framework providing\nconvenience functions and state management for the Haskell Mandrill\npackage.\n\nPlease refer to the README for an example - Cabal descriptions don't\nmake it easy to do so.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.snap)
          (hsPkgs.mandrill)
          (hsPkgs.transformers)
          (hsPkgs.configurator)
          (hsPkgs.network)
          (hsPkgs.mtl)
        ];
      };
    };
  }