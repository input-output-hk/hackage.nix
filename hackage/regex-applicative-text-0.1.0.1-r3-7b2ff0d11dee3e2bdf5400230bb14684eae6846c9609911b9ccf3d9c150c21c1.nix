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
      specVersion = "1.10";
      identifier = {
        name = "regex-applicative-text";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/regex-applicative-text#readme";
      url = "";
      synopsis = "regex-applicative on text";
      description = "Wrapped regex-applicative primitives to work with Text";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.regex-applicative)
          (hsPkgs.text)
        ];
      };
    };
  }