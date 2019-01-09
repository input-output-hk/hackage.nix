{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Neks"; version = "0.5.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "will.yager@gmail.com";
      author = "William Yager";
      homepage = "";
      url = "";
      synopsis = "Simple networked key/value store";
      description = "Neks is a fast, simple in-memory key/value server.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.messagepack)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.stm)
          (hsPkgs.network)
          (hsPkgs.vector)
          (hsPkgs.hashable)
          (hsPkgs.directory)
          ];
        };
      exes = {
        "NeksClient" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.messagepack)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.stm)
            (hsPkgs.network)
            (hsPkgs.vector)
            (hsPkgs.hashable)
            (hsPkgs.directory)
            ];
          };
        "NeksServer" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.messagepack)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.stm)
            (hsPkgs.network)
            (hsPkgs.vector)
            (hsPkgs.hashable)
            (hsPkgs.directory)
            ];
          };
        };
      };
    }