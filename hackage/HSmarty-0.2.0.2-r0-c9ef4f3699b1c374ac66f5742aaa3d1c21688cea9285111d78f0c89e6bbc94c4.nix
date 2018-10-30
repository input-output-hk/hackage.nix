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
        version = "0.2.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 - 2014 by Alexander Thiemann";
      maintainer = "mail@agrafix.net";
      author = "Alexander Thiemann <mail@agrafix.net>";
      homepage = "https://github.com/agrafix/HSmarty";
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
          (hsPkgs.attoparsec-expr)
          (hsPkgs.mtl)
          (hsPkgs.HTTP)
          (hsPkgs.HTF)
        ];
      };
      tests = {
        "TestHSmarty" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
            (hsPkgs.attoparsec-expr)
            (hsPkgs.mtl)
            (hsPkgs.HTTP)
            (hsPkgs.HTF)
          ];
        };
      };
    };
  }