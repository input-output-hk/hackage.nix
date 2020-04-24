{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "uu-tc"; version = "2015.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jurriën Stutterheim <j.stutterheim@uu.nl>,\nJoão Paulo Pizani Flor <J.P.PizaniFlor@uu.nl>";
      author = "Andres Loeh <andres@cs.uu.nl>,\nJohan Jeuring <johanj@cs.uu.nl>,\nDoaitse Swierstra <doaitse@cs.uu.nl>,\nAdolfo Ochagavía <aochagavia92@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Haskell 98 parser combinators for INFOB3TC at Utrecht University";
      description = "Course software for INFOB3TC (Languages & Compilers)\n\nThis library currently contains three Haskell 98 parser combinator libraries.\n\n* The default library, available as @ParseLib@ or more explicitly\nby importing @ParseLib.Simple@, is the one described in the\nlecture notes, using a type synonym as the type for parsers.\n\n* The second library can be chosen by importing @ParseLib.Abstract@.\nIt defines the same functions as @ParseLib.Simple@, but keeps\nthe parser type abstract.\n* The third library is an implementation of Koen Claessen's\n/Parallel Parsing Processes/, available as @ParseLib.Parallel@.\n\nIn future versions of this package, more libraries with more\nadvanced implementations of parser combinators may be added.";
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