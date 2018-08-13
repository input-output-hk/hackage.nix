{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "category-printf";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cgibbard@gmail.com";
      author = "Cale Gibbard";
      homepage = "";
      url = "";
      synopsis = "Highbrow approach to type-safe printf format specifications.";
      description = "We use the co-Kleisli category for the comonad of\nfunctions out of a fixed monoid to implement a generic\ncombinator library for type-safe format specifications.\nWorks with pretty much anything that's a monoid, with\nspecific support for String, Text (strict/lazy), and\nByteString (strict/lazy). Credit to Daniel Patterson\nfor introducing me to something that looked just enough\nlike it ought to be the composition for a category, and\nRyan Trinkle for the IsString instance. :)";
      buildType = "Simple";
    };
    components = {
      "category-printf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.comonad)
          (hsPkgs.text)
          (hsPkgs.bytestring)
        ];
      };
    };
  }