{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "regular-web";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Chris Eidhof";
      maintainer = "Chris Eidhof <chris+hackage@eidhof.nl>";
      author = "Chris Eidhof";
      homepage = "http://github.com/chriseidhof/regular-web";
      url = "";
      synopsis = "Generic programming for the web";
      description = "This package implements generic functions for web programming.\nBased on the @regular@ library [1], we provide generic functions for generating @HTML@, @Formlets@, and @JSON@.\nFor a larger example, see the @Example.lhs@ [2] file on github.\n\n1. <http://hackage.haskell.org/package/regular>\n\n2. <http://github.com/chriseidhof/regular-web/blob/master/Example.lhs>\n\n/Example/\n\nConsider the following datatypes:\n\n> data Person = Person {\n>     _name   :: String\n>   , _age    :: Int\n>   , _isMale :: Bool\n>   , _place  :: Place\n>   }\n> data Place = Place {\n>     _city      :: String\n>   , _country   :: String\n>   , _continent :: String\n> }\n\nWe can now derive a @Regular@ instance for the @Person@ datatype using Template\nHaskell:\n\n> \$(deriveAll ''Place  \"PFPlace\")\n> \$(deriveAll ''Person \"PFPerson\")\n\n>\n> type instance PF Place  = PFPlace\n> type instance PF Person = PFPerson\n\nWe can construct an example person:\n\n> location :: Place\n> location = Place \"Utrecht\" \"The Netherlands\" \"Europe\"\n> chris    :: Person\n> chris    = Person \"chris\" 25 True location\n\n> And, as an example, we can generate |HTML| and |JSON| values:\n\n> locationHtml :: X.Html\n> locationHtml = ghtml location\n\n> personHtml :: X.Html\n> personHtml = ghtml chris\n\n> locationJSON :: JSValue\n> locationJSON = gto location";
      buildType = "Simple";
    };
    components = {
      "regular-web" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.xhtml)
          (hsPkgs.formlets)
          (hsPkgs.applicative-extras)
          (hsPkgs.regular)
          (hsPkgs.fclabels)
          (hsPkgs.json)
        ];
      };
    };
  }