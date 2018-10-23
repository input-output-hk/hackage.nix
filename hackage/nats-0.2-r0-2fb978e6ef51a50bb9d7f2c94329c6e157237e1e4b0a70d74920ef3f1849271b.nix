{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { hashable = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "nats";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011-2014 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/nats/";
      url = "";
      synopsis = "Natural numbers";
      description = "Natural numbers";
      buildType = "Simple";
    };
    components = {
      "nats" = {
        depends  = [
          (hsPkgs.base)
        ] ++ pkgs.lib.optional (flags.hashable) (hsPkgs.hashable);
      };
    };
  }