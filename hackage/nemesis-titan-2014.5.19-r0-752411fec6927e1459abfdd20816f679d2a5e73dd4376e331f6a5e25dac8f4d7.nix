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
      specVersion = "1.2";
      identifier = {
        name = "nemesis-titan";
        version = "2014.5.19";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang <nfjinjing@gmail.com>";
      author = "Jinjing Wang";
      homepage = "http://github.com/nfjinjing/nemesis-titan";
      url = "";
      synopsis = "A collection of Nemesis tasks to bootstrap a Haskell project with a focus on continuous integration";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.nemesis)
          (hsPkgs.air)
          (hsPkgs.air-th)
          (hsPkgs.uuid)
          (hsPkgs.random)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.HStringTemplate)
          (hsPkgs.hspec)
        ];
      };
    };
  }