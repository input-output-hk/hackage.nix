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
      specVersion = "1.6";
      identifier = {
        name = "vacuum";
        version = "0.0.94";
      };
      license = "LicenseRef-LGPL";
      copyright = "(c) Matt Morrow 2009";
      maintainer = "Matt Morrow <morrow@moonpatio.com>";
      author = "Matt Morrow";
      homepage = "http://moonpatio.com/vacuum/";
      url = "";
      synopsis = "Extract graph representations of ghc heap values.";
      description = "<http://moonpatio.com/vacuum/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.pretty)
          (hsPkgs.haskell-src-meta)
        ];
      };
    };
  }