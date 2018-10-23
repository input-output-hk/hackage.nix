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
        name = "ddc-war";
        version = "0.4.1.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The Disciplined Disciple Compiler Strike Force";
      homepage = "http://disciple.ouroborus.net";
      url = "";
      synopsis = "Disciplined Disciple Compiler test driver and buildbot.";
      description = "Disciplined Disciple Compiler test driver and buildbot.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ddc-war" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.random)
            (hsPkgs.buildbox)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.stm)
          ];
        };
      };
    };
  }