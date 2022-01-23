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
      specVersion = "1.10";
      identifier = { name = "Cabal-syntax"; version = "3.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2003-2021, Cabal Development Team (see AUTHORS file)";
      maintainer = "cabal-devel@haskell.org";
      author = "Cabal Development Team <cabal-devel@haskell.org>";
      homepage = "http://www.haskell.org/cabal/";
      url = "";
      synopsis = "A library for working with .cabal files";
      description = "This library provides tools for reading and manipulating the .cabal file\nformat.\n\nVersion 3.6 (unlike the following versions) is a dummy package that\nprevents module name clases between Cabal and Cabal-syntax if used together\nwith a Cabal flag as described below.\n\nIn Cabal-3.7 this package was split off. To avoid module name clashes, you\ncan add this to your .cabal file:\n\n> flag Cabal-syntax\n>   description: Use the new Cabal-syntax package\n>   default: False\n>   manual: False\n>\n> library\n>   -- ...\n>   if flag(Cabal-syntax)\n>     build-depends: Cabal-syntax >= 3.7\n>   else\n>     build-depends: Cabal < 3.7, Cabal-syntax < 3.7\n\nThis will default to the older build, but will allow consumers to opt-in to\nthe newer libraries by requiring Cabal or Cabal-syntax >= 3.7";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal")) ];
        buildable = true;
        };
      };
    }