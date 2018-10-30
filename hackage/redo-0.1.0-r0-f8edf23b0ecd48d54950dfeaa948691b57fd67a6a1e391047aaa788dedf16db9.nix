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
      specVersion = "1.8";
      identifier = {
        name = "redo";
        version = "0.1.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "jekor@jekor.com";
      author = "Chris Forno (jekor)";
      homepage = "https://github.com/jekor/redo";
      url = "";
      synopsis = "software build system, make replacement, implementation of djb's redo";
      description = "redo builds a target file from source files using a \"do\" script. It also tracks when source files have changed and rebuilds target files as necessary.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "redo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.pureMD5)
          ];
        };
      };
    };
  }