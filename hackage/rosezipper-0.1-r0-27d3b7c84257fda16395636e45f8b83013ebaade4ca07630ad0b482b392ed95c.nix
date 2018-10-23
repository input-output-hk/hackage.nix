{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "rosezipper";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Eric Kow <E.Y.Kow@brighton.ac.uk>";
      author = "Krasimir Angelov and Iavor S. Diatchki";
      homepage = "";
      url = "";
      synopsis = "Generic zipper implementation for Data.Tree";
      description = "Generic zipper implementation for Data.Tree";
      buildType = "Simple";
    };
    components = {
      "rosezipper" = {
        depends  = if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
          ]
          else [ (hsPkgs.base) ];
      };
    };
  }