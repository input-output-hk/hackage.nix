{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "stm-chunked-queues";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 Alexander Kondratskiy";
      maintainer = "Alexander Kondratskiy <kholdstare0.0@gmail.com>";
      author = "Alexander Kondratskiy";
      homepage = "http://github.com/kholdstare/stm-chunked-queues/";
      url = "";
      synopsis = "Chunked Communication Queues";
      description = "Thread communication queues that group items/requests that occur close together in time";
      buildType = "Simple";
    };
    components = {
      "stm-chunked-queues" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.async)
        ];
      };
      tests = {
        "UnitTests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stm)
            (hsPkgs.async)
            (hsPkgs.HUnit)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }