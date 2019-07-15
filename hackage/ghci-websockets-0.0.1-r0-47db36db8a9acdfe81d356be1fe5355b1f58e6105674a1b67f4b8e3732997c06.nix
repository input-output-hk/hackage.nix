{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "ghci-websockets"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2019 Jann Mueller";
      maintainer = "Jann Müller (j.mueller.11@alumni.ucl.ac.uk)";
      author = "Jann Müller";
      homepage = "https://github.com/j-mueller/ghci-websockets";
      url = "";
      synopsis = "A websocket server that survives GHCi reloads";
      description = "A websocket server that survives GHCi reloads - use your browser to visualise results from the REPL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.foreign-store)
          (hsPkgs.websockets)
          (hsPkgs.text)
          (hsPkgs.containers)
          ];
        };
      };
    }