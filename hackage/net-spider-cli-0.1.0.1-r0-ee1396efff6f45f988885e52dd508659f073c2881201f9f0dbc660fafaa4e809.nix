{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "net-spider-cli"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/net-spider";
      url = "";
      synopsis = "CLI option parsers for NetSpider objects";
      description = "CLI option parsers for NetSpider objects. See \"NetSpider.CLI\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.net-spider)
          (hsPkgs.optparse-applicative)
          (hsPkgs.aeson)
          (hsPkgs.hashable)
          (hsPkgs.greskell-core)
          (hsPkgs.text)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.net-spider-cli)
            (hsPkgs.net-spider)
            (hsPkgs.optparse-applicative)
            (hsPkgs.hspec)
            ];
          };
        "doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.doctest-discover)
            ];
          };
        };
      };
    }