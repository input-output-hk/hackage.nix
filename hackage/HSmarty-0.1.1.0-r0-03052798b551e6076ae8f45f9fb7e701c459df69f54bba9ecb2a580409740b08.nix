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
        name = "HSmarty";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 by Alexander Thiemann";
      maintainer = "mail@agrafix.net";
      author = "Alexander Thiemann <mail@agrafix.net>";
      homepage = "";
      url = "";
      synopsis = "Haskell implementation of a subset of the PHP-Smarty template language";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.mtl)
          (hsPkgs.HTTP)
          (hsPkgs.HTF)
        ];
      };
      exes = {
        "TestHSmarty" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.mtl)
            (hsPkgs.HTTP)
            (hsPkgs.HTF)
          ];
        };
      };
    };
  }