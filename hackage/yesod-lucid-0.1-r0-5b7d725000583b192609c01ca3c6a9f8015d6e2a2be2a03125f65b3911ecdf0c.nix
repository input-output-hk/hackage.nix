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
      specVersion = "1.8";
      identifier = {
        name = "yesod-lucid";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Chris Done";
      maintainer = "Joey Hess <id@joeyh.name>";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "Lucid support for Yesod";
      description = "Allows using Lucid to generate html in a yesod site.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.yesod-core)
          (hsPkgs.lucid)
          (hsPkgs.monads-tf)
          (hsPkgs.text)
        ];
      };
    };
  }