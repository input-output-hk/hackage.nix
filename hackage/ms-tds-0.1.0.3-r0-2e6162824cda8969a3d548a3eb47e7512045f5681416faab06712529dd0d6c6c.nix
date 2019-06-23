{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "ms-tds"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2019 Takamasa Mitsuji";
      maintainer = "tkms@mitsuji.org";
      author = "Takamasa Mitsuji";
      homepage = "https://github.com/mitsuji/ms-tds#readme";
      url = "";
      synopsis = "TDS Protocol implemented in Haskell";
      description = "Please see the README on GitHub at <https://github.com/mitsuji/ms-tds#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.crypto-random)
          (hsPkgs.data-default-class)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.tls)
          (hsPkgs.uuid-types)
          (hsPkgs.x509-store)
          (hsPkgs.x509-system)
          ];
        };
      tests = {
        "tds-test" = {
          depends = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.crypto-random)
            (hsPkgs.data-default-class)
            (hsPkgs.ms-tds)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.tls)
            (hsPkgs.uuid-types)
            (hsPkgs.x509-store)
            (hsPkgs.x509-system)
            ];
          };
        };
      };
    }