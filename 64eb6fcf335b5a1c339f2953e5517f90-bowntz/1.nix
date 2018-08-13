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
      specVersion = "1.10";
      identifier = {
        name = "bowntz";
        version = "1";
      };
      license = "GPL-3.0-only";
      copyright = "2010,2013,2015,2016 Claude Heiland-Allen";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "https://code.mathr.co.uk/bowntz";
      url = "";
      synopsis = "audio-visual pseudo-physical simulation of colliding circles";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "bowntz" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.GLUT)
            (hsPkgs.hosc)
            (hsPkgs.hsc3)
            (hsPkgs.random)
          ];
        };
      };
    };
  }