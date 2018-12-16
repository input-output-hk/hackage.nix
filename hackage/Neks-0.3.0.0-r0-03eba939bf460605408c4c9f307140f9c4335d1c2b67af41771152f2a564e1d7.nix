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
      specVersion = "1.10";
      identifier = {
        name = "Neks";
        version = "0.3.0.0";
      };
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
      exes = {
        "Client" = {
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
        "Server" = {
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