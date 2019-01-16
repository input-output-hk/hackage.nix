{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "yam-datasource"; version = "0.5.7"; };
      license = "BSD-3-Clause";
      copyright = "(c) Daniel YU";
      maintainer = "Daniel YU <leptonyu@gmail.com>";
      author = "Daniel YU";
      homepage = "https://github.com/leptonyu/yam/yam-datasource#readme";
      url = "";
      synopsis = "Yam DataSource Middleware";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.persistent)
          (hsPkgs.resource-pool)
          (hsPkgs.resourcet)
          (hsPkgs.unliftio-core)
          (hsPkgs.yam)
          ];
        };
      };
    }