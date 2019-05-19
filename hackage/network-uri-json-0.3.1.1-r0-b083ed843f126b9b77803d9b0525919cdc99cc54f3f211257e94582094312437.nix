{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "network-uri-json"; version = "0.3.1.1"; };
      license = "MIT";
      copyright = "(c) 2017 Alex Brandt";
      maintainer = "alunduil@alunduil.com";
      author = "Alex Brandt";
      homepage = "https://github.com/alunduil/network-uri-json";
      url = "";
      synopsis = "FromJSON and ToJSON Instances for Network.URI";
      description = "FromJSON and ToJSON instances for Network.URI.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.network-uri)
          (hsPkgs.text)
          ];
        };
      tests = {
        "network-uri-json-tests" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.network-arbitrary)
            (hsPkgs.network-uri)
            (hsPkgs.test-invariant)
            (hsPkgs.text)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        };
      };
    }