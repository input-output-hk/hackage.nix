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
        name = "varying";
        version = "0.1.5.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "schell.scivally@synapsegroup.com";
      author = "Schell Scivally";
      homepage = "https://github.com/schell/varying";
      url = "";
      synopsis = "FRP through varying values and monadic splines.";
      description = "Varying is a FRP implentation aimed at providing a\nsimple way to describe values that change over some domain.\nIt allows monadic, applicative or arrow notation and has\nconvenience functions for tweening.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "varying-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }