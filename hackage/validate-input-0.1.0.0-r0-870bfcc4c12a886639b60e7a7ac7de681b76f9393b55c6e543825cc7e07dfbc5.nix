{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "validate-input";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "(c) 2015 Alexander Thiemann";
      maintainer = "Alexander Thiemann <mail@athiemann.net>";
      author = "Alexander Thiemann <mail@athiemann.net>";
      homepage = "https://github.com/agrafix/validate-input";
      url = "";
      synopsis = "Input validation combinator library";
      description = "A small Haskell combinator library that provides a simple way of validating user provided data structures.";
      buildType = "Simple";
    };
    components = {
      "validate-input" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.either)
          (hsPkgs.mtl)
          (hsPkgs.pcre-heavy)
          (hsPkgs.stringable)
          (hsPkgs.text)
        ];
      };
    };
  }