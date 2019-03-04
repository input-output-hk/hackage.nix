{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "sc2-lowlevel"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sophie Taylor <sophie@spacekitteh.moe>";
      author = "";
      homepage = "https://github.com/spacekitteh/sc2hs";
      url = "";
      synopsis = "Low-level Starcraft II API";
      description = "This package is a wrapper around the sc2-proto library, handling things such as launching the process and sending and receiving messages over a websocket.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.freer-simple)
          (hsPkgs.lens)
          (hsPkgs.lens-labels)
          (hsPkgs.network)
          (hsPkgs.optparse-applicative)
          (hsPkgs.process)
          (hsPkgs.proto-lens)
          (hsPkgs.sc2-proto)
          (hsPkgs.sc2-support)
          (hsPkgs.text)
          (hsPkgs.websockets)
          ];
        };
      };
    }