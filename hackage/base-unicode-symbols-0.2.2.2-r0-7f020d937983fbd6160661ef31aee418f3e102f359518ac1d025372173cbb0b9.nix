{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { old-base = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "base-unicode-symbols";
        version = "0.2.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "2009–2011 Roel van Dijk <vandijk.roel@gmail.com>";
      maintainer = "Roel van Dijk <vandijk.roel@gmail.com>";
      author = "Roel van Dijk <vandijk.roel@gmail.com>";
      homepage = "http://haskell.org/haskellwiki/Unicode-symbols";
      url = "";
      synopsis = "Unicode alternatives for common functions and operators";
      description = "This package defines new symbols for a number of functions,\noperators and types in the base package.\n\nAll symbols are documented with their actual definition and\ninformation regarding their Unicode code point. They should be\ncompletely interchangeable with their definitions.\n\nFor further Unicode goodness you can enable the @UnicodeSyntax@\nlanguage extension \\[1\\]. This extension enables Unicode characters\nto be used to stand for certain ASCII character sequences,\ni.e. &#x2192; instead of @->@, &#x2200; instead of @forall@ and many\nothers.\n\nOriginal idea by P&#xE9;ter Divi&#xE1;nszky.\n\n\\[1\\] <http://www.haskell.org/ghc/docs/latest/html/users_guide/syntax-extns.html#unicode-syntax>";
      buildType = "Simple";
    };
    components = {
      "base-unicode-symbols" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }