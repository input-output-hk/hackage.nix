{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "yam-datasource"; version = "0.6.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Daniel YU";
      maintainer = "Daniel YU <leptonyu@gmail.com>";
      author = "Daniel YU";
      homepage = "https://github.com/leptonyu/yam#readme";
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
          (hsPkgs.data-default)
          (hsPkgs.monad-logger)
          (hsPkgs.persistent)
          (hsPkgs.resource-pool)
          (hsPkgs.resourcet)
          (hsPkgs.salak)
          (hsPkgs.servant-server)
          (hsPkgs.text)
          (hsPkgs.unliftio-core)
          (hsPkgs.yam)
          ];
        };
      };
    }