{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "concurrent-state";
        version = "0.5.1.4";
      };
      license = "MIT";
      copyright = "";
      maintainer = "me@joelt.io";
      author = "Joel Taylor";
      homepage = "https://github.com/joelteon/concurrent-state";
      url = "";
      synopsis = "MTL-like library using TVars";
      description = "State, RWS backed by TVar.";
      buildType = "Simple";
    };
    components = {
      "concurrent-state" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.exceptions)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "chat-server" = {
          depends  = pkgs.lib.optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.concurrent-state)
            (hsPkgs.network)
            (hsPkgs.stm)
          ];
        };
      };
    };
  }