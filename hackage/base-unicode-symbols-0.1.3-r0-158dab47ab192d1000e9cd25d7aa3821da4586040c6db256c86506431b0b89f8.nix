{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "base-unicode-symbols"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009–2010 Roel van Dijk <vandijk.roel@gmail.com>";
      maintainer = "Roel van Dijk <vandijk.roel@gmail.com>";
      author = "Roel van Dijk <vandijk.roel@gmail.com>";
      homepage = "http://haskell.org/haskellwiki/Unicode-symbols";
      url = "";
      synopsis = "Unicode alternatives for common functions and operators";
      description = "This package defines new symbols for a number of functions and\noperators in the base package.\n\nAll symbols are documented with their actual definition and\ninformation regarding their Unicode code point. They should be\ncompletely interchangeable with their definitions.\n\nFor further Unicode goodness you can enable the @UnicodeSyntax@\nlanguage extension \\[1\\]. This extension enables Unicode characters\nto be used to stand for certain ASCII character sequences. For GHC\n6.12.1 it provides the following alternatives:\n\n* &#x2237; (U+2237, PROPORTION) instead of @::@\n\n* &#x21D2; (U+21D2, RIGHTWARDS DOUBLE ARROW) instead of @=>@\n\n* &#x2200; (U+2200, FOR ALL) instead of @forall@\n\n* &#x2192; (U+2192, RIGHTWARDS ARROW) instead of @->@\n\n* &#x2190; (U+2190, LEFTWARDS ARROW) instead of @<-@\n\n* &#x22EF; (U+22EF, MIDLINE HORIZONTAL ELLIPSIS) instead of @..@\n\nOriginal idea by P&#xE9;ter Divi&#xE1;nszky.\n\n\\[1\\] <http://www.haskell.org/ghc/docs/latest/html/users_guide/syntax-extns.html#unicode-syntax>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }