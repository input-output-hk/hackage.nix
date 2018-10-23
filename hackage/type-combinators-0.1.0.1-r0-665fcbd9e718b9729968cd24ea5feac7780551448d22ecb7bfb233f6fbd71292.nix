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
        name = "type-combinators";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kylcarte@gmail.com";
      author = "Kyle Carter";
      homepage = "http://github.com/kylcarte/type-combinators";
      url = "";
      synopsis = "A collection of data types for type-level programming.";
      description = "I put this library together first and foremost so that\nI wouldn't need to constantly rewrite the same code\nthat uses these types, but also because I noticed a\ngrowing trend of writing and rewriting bits and pieces\nof code for these types all over the Haskell community.\nHopefully, this helps! Contributions, criticisms, and\nthoughts are very welcome.  -kylcarte";
      buildType = "Simple";
    };
    components = {
      "type-combinators" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }