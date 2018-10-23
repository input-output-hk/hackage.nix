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
        name = "snaplet-environments";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ciemniewski.kamil@gmail.com";
      author = "Kamil Ciemniewski";
      homepage = "";
      url = "";
      synopsis = "DEPRECATED! You should use standard Snap >= 0.9 \"environments\" functionality. It provided ability to easly read configuration based on given app environment given at command line, envs are defined in app configuration file";
      description = "";
      buildType = "Simple";
    };
    components = {
      "snaplet-environments" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.snap)
          (hsPkgs.snap-core)
          (hsPkgs.mtl)
          (hsPkgs.configurator)
          (hsPkgs.regex-tdfa)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
          (hsPkgs.bson)
        ];
      };
    };
  }