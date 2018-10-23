{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "convertible-ascii";
        version = "0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "PHO <pho at cielonegro dot org>";
      author = "PHO <pho at cielonegro dot org>";
      homepage = "https://github.com/phonohawk/convertible-ascii";
      url = "";
      synopsis = "convertible instances for ascii";
      description = "\nThis package provides convertible instances for ascii:\n\n* <http://hackage.haskell.org/package/convertible-text>\n\n* <http://hackage.haskell.org/package/ascii>\n";
      buildType = "Simple";
    };
    components = {
      "convertible-ascii" = {
        depends  = [
          (hsPkgs.ascii)
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.convertible-text)
          (hsPkgs.failure)
          (hsPkgs.text)
        ];
      };
    };
  }