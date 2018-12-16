{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-ekg";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Servant Contributors <haskell-servant-maintainers@googlegroups.com>";
      author = "Anchor Engineering <engineering@lists.anchor.net.au>, Servant Contributors";
      homepage = "";
      url = "";
      synopsis = "Helpers for using ekg with servant";
      description = "Helpers for using ekg with servant";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ekg-core)
          (hsPkgs.servant)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.wai)
        ];
      };
      exes = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.ekg)
            (hsPkgs.ekg-core)
            (hsPkgs.servant-ekg)
            (hsPkgs.servant-server)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.process)
          ];
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.ekg)
            (hsPkgs.ekg-core)
            (hsPkgs.servant-ekg)
            (hsPkgs.servant-server)
            (hsPkgs.servant-client)
            (hsPkgs.servant)
            (hsPkgs.http-client)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.hspec)
            (hsPkgs.unordered-containers)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }