{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "miss-porcelain"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015-2018 Alec Heller & davean";
      maintainer = "oss@xkcd.com";
      author = "Alec Heller &  davean";
      homepage = "https://oss.xkcd.com/";
      url = "";
      synopsis = "Useability extras built on top of miss.";
      description = "This package builds on 'miss', providing convinient interfaces for working with git repositories.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.filesystem-abstractions)
          (hsPkgs.list-tries)
          (hsPkgs.miss)
          (hsPkgs.mtl)
          (hsPkgs.posix-paths)
          ];
        };
      };
    }