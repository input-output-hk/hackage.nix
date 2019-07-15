{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "net-spider-pangraph"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Toshio Ito <debug.ito@gmail.com>";
      author = "Toshio Ito <debug.ito@gmail.com>";
      homepage = "https://github.com/debug-ito/net-spider";
      url = "";
      synopsis = "Conversion between net-spider and pangraph";
      description = "Conversion between <https://hackage.haskell.org/package/net-spider net-spider> and <https://hackage.haskell.org/package/pangraph pangraph>. See README.md for detail.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.net-spider)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.pangraph)
          (hsPkgs.time)
          (hsPkgs.greskell)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.net-spider-pangraph)
            (hsPkgs.text)
            (hsPkgs.pangraph)
            (hsPkgs.net-spider)
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