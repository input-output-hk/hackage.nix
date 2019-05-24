{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { with-e2e-tests = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "git-remote-ipfs"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Monadic GmbH";
      maintainer = "Kim Altintop <kim@monadic.xyz>, Monadic Team <team@monadic.xyz>";
      author = "Kim Altintop";
      homepage = "https://github.com/oscoin/ipfs";
      url = "";
      synopsis = "Git remote helper to store git objects on IPFS";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.cryptonite)
          (hsPkgs.filepath)
          (hsPkgs.formatting)
          (hsPkgs.generics-sop)
          (hsPkgs.git)
          (hsPkgs.http-client)
          (hsPkgs.ipfs-api)
          (hsPkgs.ipld-cid)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.mtl)
          (hsPkgs.multibase)
          (hsPkgs.multihash-cryptonite)
          (hsPkgs.network-uri)
          (hsPkgs.optparse-applicative)
          (hsPkgs.primitive)
          (hsPkgs.safe-exceptions)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.typed-process)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "git-remote-ipfs" = {
          depends = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.git-remote-ipfs)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            ];
          };
        };
      tests = {
        "e2e-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.entropy)
            (hsPkgs.filepath)
            (hsPkgs.git)
            (hsPkgs.hourglass)
            (hsPkgs.http-client)
            (hsPkgs.ipfs-api)
            (hsPkgs.lens)
            (hsPkgs.lens-aeson)
            (hsPkgs.safe-exceptions)
            (hsPkgs.servant)
            (hsPkgs.servant-client)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.typed-process)
            ];
          };
        };
      };
    }