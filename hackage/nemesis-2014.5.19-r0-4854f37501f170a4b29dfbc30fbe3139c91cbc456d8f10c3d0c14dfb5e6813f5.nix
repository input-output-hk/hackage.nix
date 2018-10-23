{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "nemesis";
        version = "2014.5.19";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "http://github.com/nfjinjing/nemesis";
      url = "";
      synopsis = "a task management tool for Haskell";
      description = "Organize common shell tasks into a meaningful tree like structure with dependency tracking";
      buildType = "Simple";
    };
    components = {
      "nemesis" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.containers)
          (hsPkgs.air)
          (hsPkgs.air-th)
          (hsPkgs.dlist)
          (hsPkgs.Glob)
          (hsPkgs.directory)
        ];
      };
    };
  }