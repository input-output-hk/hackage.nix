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
        name = "sundown";
        version = "0.5.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Francesco Mazzoli (f@mazzo.li)";
      author = "Francesco Mazzoli (f@mazzo.li)";
      homepage = "https://github.com/bitonic/sundown";
      url = "";
      synopsis = "Bindings to the sundown markdown library";
      description = "Bindings to GitHub's C markdown library: <https://github.com/vmg/sundown>.\n\nThe Haskell code is in the public domain. For sundown's license, refer to\nits GitHub page.";
      buildType = "Simple";
    };
    components = {
      "sundown" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
          (hsPkgs.text)
        ];
      };
    };
  }