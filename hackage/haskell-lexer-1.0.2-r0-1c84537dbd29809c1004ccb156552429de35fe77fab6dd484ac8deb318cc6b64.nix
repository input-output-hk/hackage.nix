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
        name = "haskell-lexer";
        version = "1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diatchki@galois.com";
      author = "Thomas Hallgren";
      homepage = "https://github.com/yav/haskell-lexer";
      url = "";
      synopsis = "A fully compliant Haskell 98 lexer.";
      description = "A fully compliant Haskell 98 lexer.";
      buildType = "Simple";
    };
    components = {
      "haskell-lexer" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }