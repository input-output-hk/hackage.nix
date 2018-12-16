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
      specVersion = "1.2";
      identifier = {
        name = "Fungi";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "thomasedingcode@gmail.com";
      author = "Thomas Eding";
      homepage = "";
      url = "";
      synopsis = "An interpreter for Funge-98 programming languages, including Befunge.";
      description = "Fungi is a standards compliant Funge-98 interpreter equipped with an integrated debugger.\nSupports funges of arbitrary dimensions, including Unefunge, Befunge, and Trefunge.\nAllows limited control of funge cell size.\nSeveral fingerprints are implemented.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "fungi" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ListZipper)
            (hsPkgs.mtl)
            (hsPkgs.mwc-random)
            (hsPkgs.old-time)
            (hsPkgs.process)
            (hsPkgs.random)
          ];
        };
      };
    };
  }