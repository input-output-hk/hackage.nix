{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "yam-redis"; version = "0.6.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Daniel YU";
      maintainer = "Daniel YU <leptonyu@gmail.com>";
      author = "Daniel YU";
      homepage = "https://github.com/leptonyu/yam#readme";
      url = "";
      synopsis = "Yam Redis Middleware";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.hedis)
          (hsPkgs.menshen)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.salak)
          (hsPkgs.servant-server)
          (hsPkgs.text)
          (hsPkgs.yam)
          ];
        };
      };
    }