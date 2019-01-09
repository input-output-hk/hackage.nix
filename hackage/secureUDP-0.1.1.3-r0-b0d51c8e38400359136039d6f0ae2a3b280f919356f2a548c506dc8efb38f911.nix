{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "secureUDP"; version = "0.1.1.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "franciscojacb@gmail.com";
      author = "Francisco Javier Andrés Casas Barrientos";
      homepage = "";
      url = "";
      synopsis = "Setups secure (unsorted) UDP packet transfer.";
      description = "This simple module allows to send packages ensuring delivering over an UDP connection\nusing ACKs and timeouts under the hood, also setups the threads needed for listening\nand sending, making them transparent to the user.\n\nAs the packages can be delivered just when they arrive, is not guarenteed that\nthey arrive in order.\n\nOnce a sent package has passed many timeouts without been ACKed from the recipient it\ncan be recognized as a lost package, meaning that the recipient cannot longer be\nreached.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.network)
          ];
        };
      };
    }