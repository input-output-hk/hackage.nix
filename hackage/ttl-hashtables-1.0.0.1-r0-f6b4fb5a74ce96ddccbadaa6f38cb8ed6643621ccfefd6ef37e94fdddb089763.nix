{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "ttl-hashtables"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Erick Gonzalez";
      maintainer = "erick@codemonkeylabs.de";
      author = "Erick Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Extends hashtables so that entries added can be expired after a TTL";
      description = "Please see the README on Gitlab at <https://gitlab.com/codemonkeylabs/ttl-hashtables#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.clock)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.failable)
          (hsPkgs.hashable)
          (hsPkgs.hashtables)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "ttl-hashtables-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.clock)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.failable)
            (hsPkgs.hashable)
            (hsPkgs.hashtables)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.ttl-hashtables)
            ];
          };
        };
      };
    }