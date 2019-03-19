{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hnix-store-remote"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2018 Richard Marko";
      maintainer = "srk@48.io";
      author = "Richard Marko";
      homepage = "https://github.com/haskell-nix/hnix-store";
      url = "";
      synopsis = "Remote hnix store";
      description = "Implementation of the nix store using the daemon protocol.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.unix)
          (hsPkgs.network)
          (hsPkgs.mtl)
          (hsPkgs.unordered-containers)
          (hsPkgs.hnix-store-core)
          ];
        };
      exes = {
        "hnix-store-temporary-live-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.hnix-store-core)
            (hsPkgs.hnix-store-remote)
            (hsPkgs.unordered-containers)
            (hsPkgs.pretty-simple)
            ];
          };
        };
      };
    }