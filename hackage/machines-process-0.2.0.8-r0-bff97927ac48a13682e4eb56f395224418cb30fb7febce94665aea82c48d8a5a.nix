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
        name = "machines-process";
        version = "0.2.0.8";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "alois.cochard@gmail.com";
      author = "Alois Cochard";
      homepage = "http://github.com/aloiscochard/machines-process";
      url = "";
      synopsis = "Process (system) utilities for the machines library";
      description = "";
      buildType = "Simple";
    };
    components = {
      "machines-process" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.chunked-data)
          (hsPkgs.machines)
          (hsPkgs.machines-io)
          (hsPkgs.process)
        ];
      };
    };
  }