{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "net-spider-rpl"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/net-spider";
      url = "";
      synopsis = "NetSpider data model and utility for RPL networks";
      description = "NetSpider data model and utility for RPL networks. See \"NetSpider.RPL\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.greskell)
          (hsPkgs.net-spider)
          (hsPkgs.text)
          (hsPkgs.ip)
          (hsPkgs.hashable)
          (hsPkgs.time)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.net-spider-rpl)
            (hsPkgs.net-spider)
            (hsPkgs.text)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }