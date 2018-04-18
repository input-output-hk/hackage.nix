{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      monadrandom = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "random-effin";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2014 (c) Hiromi ISHII";
        maintainer = "konn.jinro_at_gmail.com";
        author = "Hiromi ISHII";
        homepage = "";
        url = "";
        synopsis = "A simple random generator library for effin";
        description = "A simple random generator library for effin";
        buildType = "Simple";
      };
      components = {
        random-effin = {
          depends  = [
            hsPkgs.base
            hsPkgs.effin
            hsPkgs.random
          ] ++ pkgs.lib.optional _flags.monadrandom hsPkgs.MonadRandom;
        };
      };
    }