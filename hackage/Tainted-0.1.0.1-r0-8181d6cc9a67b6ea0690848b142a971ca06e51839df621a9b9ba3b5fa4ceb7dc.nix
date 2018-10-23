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
        name = "Tainted";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 Ross Meikleham";
      maintainer = "rossmeikleham@hotmail.co.uk";
      author = "RossMeikleham";
      homepage = "https://github.com/RossMeikleham/Tainted";
      url = "";
      synopsis = "Tainted type, and associated operations";
      description = "Tainted type, and associated operations";
      buildType = "Simple";
    };
    components = {
      "Tainted" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
      };
    };
  }