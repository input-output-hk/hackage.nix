{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "gc-monitoring-wai"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yi.codeplayer@gmail.com";
      author = "yihuang";
      homepage = "https://github.com/yihuang/gc-monitoring-wai";
      url = "";
      synopsis = "a wai application to show GHC.GCStats";
      description = "a wai application to show GHC.GCStats, look `test.hs` for usage, package also contains a munin plugin script in python.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
          (hsPkgs.blaze-builder)
          (hsPkgs.http-types)
          (hsPkgs.wai)
          (hsPkgs.aeson)
          ];
        };
      };
    }