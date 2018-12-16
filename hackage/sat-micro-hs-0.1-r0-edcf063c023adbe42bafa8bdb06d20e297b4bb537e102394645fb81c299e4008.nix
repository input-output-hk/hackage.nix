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
      specVersion = "0";
      identifier = {
        name = "sat-micro-hs";
        version = "0.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Denis Bueno <dbueno@gmail.com>";
      author = "Denis Bueno";
      homepage = "";
      url = "";
      synopsis = "A minimal SAT solver";
      description = "A complete (in the logical sense) SAT solver with non-chronological backtracking.  This is a Haskell implementation of (most of) the minimal OCaml solver described in the paper \"SAT-MICRO: petit mais costaud!\" by Sylvain Conchon, Johannes Kanig, and Stephane Lescuyer.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "sat-micro" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.pretty)
            (hsPkgs.haskell98)
            (hsPkgs.mtl)
            (hsPkgs.parse-dimacs)
          ];
        };
      };
    };
  }