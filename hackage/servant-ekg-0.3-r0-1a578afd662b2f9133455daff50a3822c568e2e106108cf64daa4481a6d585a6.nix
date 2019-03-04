{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-ekg"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Servant Contributors <haskell-servant-maintainers@googlegroups.com>";
      author = "Anchor Engineering <engineering@lists.anchor.net.au>, Servant Contributors";
      homepage = "";
      url = "";
      synopsis = "Helpers for using ekg with servant";
      description = "Helpers for using ekg with servant, e.g.. counters per endpoint.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ekg-core)
          (hsPkgs.http-types)
          (hsPkgs.hashable)
          (hsPkgs.servant)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.wai)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.ekg)
            (hsPkgs.ekg-core)
            (hsPkgs.hspec)
            (hsPkgs.http-client)
            (hsPkgs.servant)
            (hsPkgs.servant-client)
            (hsPkgs.servant-ekg)
            (hsPkgs.servant-server)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.wai)
            (hsPkgs.warp)
            ];
          build-tools = [ ((hsPkgs.buildPackages).hspec-discover) ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.ekg)
            (hsPkgs.ekg-core)
            (hsPkgs.process)
            (hsPkgs.servant-ekg)
            (hsPkgs.servant-server)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }