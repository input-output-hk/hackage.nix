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
        version = "2016.3.19";
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
          (hsPkgs.Glob)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.dlist)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.time)
        ];
      };
    };
  }