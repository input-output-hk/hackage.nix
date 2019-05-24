{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "ipld-cid"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Monadic GmbH";
      maintainer = "Kim Altintop <kim@monadic.xyz>, Monadic Team <team@monadic.xyz>";
      author = "Kim Altintop";
      homepage = "https://github.com/oscoin/ipfs";
      url = "";
      synopsis = "IPLD Content-IDentifiers <https://github.com/ipld/cid>";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.binary-varint)
          (hsPkgs.bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.multibase)
          (hsPkgs.multihash-cryptonite)
          (hsPkgs.text)
          ];
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cryptonite)
            (hsPkgs.hedgehog)
            (hsPkgs.ipld-cid)
            (hsPkgs.multibase)
            (hsPkgs.multihash-cryptonite)
            (hsPkgs.text)
            ];
          };
        };
      };
    }