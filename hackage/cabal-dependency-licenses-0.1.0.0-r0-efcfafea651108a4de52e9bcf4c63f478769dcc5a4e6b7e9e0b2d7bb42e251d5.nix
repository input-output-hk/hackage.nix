{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "cabal-dependency-licenses";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Jasper Van der Jeugt";
      maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
      author = "Jasper Van der Jeugt <m@jaspervdj.be>";
      homepage = "";
      url = "";
      synopsis = "Compose a list of a project's dependencies with their licenses";
      description = "Compose a list of a project's dependencies with their licenses";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabal-dependency-licenses" = {
          depends  = [
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }