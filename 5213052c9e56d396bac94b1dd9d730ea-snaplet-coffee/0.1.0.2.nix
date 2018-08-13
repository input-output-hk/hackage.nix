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
      specVersion = "1.8";
      identifier = {
        name = "snaplet-coffee";
        version = "0.1.0.2";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2013 Kevin van Rooijen";
      maintainer = "kevin.van.rooijen@gmail.com";
      author = "Kevin van Rooijen";
      homepage = "https://github.com/AtticHacker/snaplet-coffee";
      url = "";
      synopsis = "CoffeeScript for Snap, auto-compilation and pre-compilation.";
      description = "A simple snaplet based off of 'snaplet-fay' but for CoffeeScript.";
      buildType = "Simple";
    };
    components = {
      "snaplet-coffee" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.snap-core)
          (hsPkgs.snap)
          (hsPkgs.haskell-coffee)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.configurator)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
        ];
      };
    };
  }