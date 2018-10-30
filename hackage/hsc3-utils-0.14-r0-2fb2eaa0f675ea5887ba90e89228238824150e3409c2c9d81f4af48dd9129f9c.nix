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
      specVersion = "1.8";
      identifier = {
        name = "hsc3-utils";
        version = "0.14";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2013";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/?t=hsc3-utils";
      url = "";
      synopsis = "Haskell SuperCollider Utilities";
      description = "Haskell SuperCollider Utilities";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hsc3-hash-paren" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hsc3-rw)
          ];
        };
        "hsc3-id-rewrite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hsc3-rw)
          ];
        };
        "hsc3-id-clear" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hsc3-rw)
          ];
        };
      };
    };
  }