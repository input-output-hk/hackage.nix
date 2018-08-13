{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "stm-channelize";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Joseph Adams 2012";
      maintainer = "joeyadams3.14159@gmail.com";
      author = "Joey Adams";
      homepage = "";
      url = "";
      synopsis = "Transactional I/O for duplex streams";
      description = "Turn I/O operations into STM transactions on channels.";
      buildType = "Simple";
    };
    components = {
      "stm-channelize" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
        ];
      };
    };
  }