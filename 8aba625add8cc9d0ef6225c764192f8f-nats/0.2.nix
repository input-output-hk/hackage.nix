{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      hashable = true;
    } // flags;
    in {
      flags = _flags;
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
            hsPkgs.base
          ] ++ pkgs.lib.optional _flags.hashable hsPkgs.hashable;
        };
      };
    }