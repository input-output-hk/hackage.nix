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
        name = "deptrack-dot";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "2018 Lucas DiCioccio";
      maintainer = "lucas@dicioccio.fr";
      author = "Lucas DiCioccio";
      homepage = "https://github.com/lucasdicioccio/deptrack-project#readme";
      url = "";
      synopsis = "Facilitate Graphviz representations of DepTrack dependencies.";
      description = "Please see the README on GitHub at <https://github.com/lucasdicioccio/deptrack-project#readme>";
      buildType = "Simple";
    };
    components = {
      "deptrack-dot" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deptrack-core)
          (hsPkgs.dotgen)
        ];
      };
      tests = {
        "deptrack-dot-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deptrack-core)
            (hsPkgs.deptrack-dot)
            (hsPkgs.dotgen)
          ];
        };
      };
    };
  }