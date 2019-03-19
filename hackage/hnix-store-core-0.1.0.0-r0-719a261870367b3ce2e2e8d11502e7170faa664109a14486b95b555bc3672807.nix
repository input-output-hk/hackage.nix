{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { bounded_memory = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hnix-store-core"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2018 Shea Levy";
      maintainer = "shea@shealevy.com";
      author = "Shea Levy";
      homepage = "https://github.com/haskell-nix/hnix-store";
      url = "";
      synopsis = "Core effects for interacting with the Nix store.";
      description = "This package contains types and functions needed to describe\ninteractions with the Nix store abstracted away from\nspecific effectful context.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptohash-md5)
          (hsPkgs.cryptohash-sha1)
          (hsPkgs.cryptohash-sha256)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.regex-base)
          (hsPkgs.regex-tdfa-text)
          (hsPkgs.text)
          (hsPkgs.unix)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "format-tests" = {
          depends = [
            (hsPkgs.hnix-store-core)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.temporary)
            (hsPkgs.text)
            ];
          };
        };
      };
    }