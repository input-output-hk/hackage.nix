{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { posix = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "cautious-file";
        version = "0.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) Robin Green 2009";
      maintainer = "Robin Green <greenrd@greenrd.org>";
      author = "Robin Green";
      homepage = "";
      url = "";
      synopsis = "Ways to write a file cautiously, to reduce the chances of problems such as data loss due to crashes or power failures";
      description = "If the posix flag is enabled, posix-specific functions are used to reduce the chance of data loss further";
      buildType = "Custom";
    };
    components = {
      "cautious-file" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.bytestring)
        ] ++ pkgs.lib.optional (flags.posix) (hsPkgs.unix);
      };
    };
  }