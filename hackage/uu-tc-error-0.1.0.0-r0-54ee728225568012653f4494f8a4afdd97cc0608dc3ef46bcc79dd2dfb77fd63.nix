{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "uu-tc-error"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "p.rednaz@googlemail.com";
      author = "Andres Loeh <andres@cs.uu.nl>,\nJohan Jeuring <johanj@cs.uu.nl>,\nDoaitse Swierstra <doaitse@cs.uu.nl>,\nAdolfo Ochagavía <aochagavia92@gmail.com>";
      homepage = "https://gitlab.com/rdnz/uu-tc-error";
      url = "";
      synopsis = "Haskell 98 parser combintors for INFOB3TC at Utrecht University";
      description = "This library tries to be a drop in replacement for\n@[uu-tc](https://hackage.haskell.org/package/uu-tc)@ that provides error\nmessages. However, we could not avoid additional type class constraints\non @parse@. Notice that you might need to add @Ord@ and @Show@\nconstraints to your own functions and ensure your own data types are\n@deriving (Ord, Show)@.\n\nFurthermore we strongly recommend using\n@parseImproved@ instead of @parse@. Please look\nat @parseImproved@'s documentation in the \"ParseLib.Abstract.Core\"\nmodule.\n\nReport bugs to [gitlab](https://gitlab.com/rdnz/uu-tc-error/-/issues) or\n@p.rednaz\\@googlemail.com@, please.\n\n__Description of @<https://hackage.haskell.org/package/uu-tc uu-tc>@__\n\nCourse software for INFOB3TC (Languages & Compilers)\n\nThis library currently contains two Haskell 98 parser combinator libraries.\n\n* The default library, available as @ParseLib@ or more explicitly\nby importing @ParseLib.Simple@, is the one described in the\nlecture notes, using a type synonym as the type for parsers.\n\n* The second library can be chosen by importing @ParseLib.Abstract@.\nIt defines the same functions as @ParseLib.Simple@, but keeps\nthe parser type abstract.\n\nIn future versions of this package, more libraries with more\nadvanced implementations of parser combinators may be added.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."uu-tc-error-error" or (errorHandler.buildDepError "uu-tc-error-error"))
        ];
        buildable = true;
      };
    };
  }