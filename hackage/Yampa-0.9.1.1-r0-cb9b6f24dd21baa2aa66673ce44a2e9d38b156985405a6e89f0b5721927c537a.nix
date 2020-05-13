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
      specVersion = "0";
      identifier = { name = "Yampa"; version = "0.9.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Henrik Nilsson, Antony Courtney and Yale University, (c) 2003";
      maintainer = "Antony Courtney\t<antony@apocalypse.org>, Paul Hudak\t<paul.hudak@yale.edu>, Henrik Nilsson\t<nilsson@cs.yale.edu>, John Peterson\t<peterson-john@cs.yale.edu>";
      author = "Antony Courtney, Paul Hudak, Henrik Nilsson, John Peterson";
      homepage = "http://www.haskell.org/yampa/";
      url = "";
      synopsis = "Library for programming hybrid systems.";
      description = "Domain-specific language embedded in Haskell for programming hybrid (mixed discrete-time and continuous-time) systems.\n\nYampa is based on the concepts of Functional Reactive Programming (FRP) and is structured using arrow combinators. So, this library is known as AFRP (Arrowized FRP).\n\nThis package is just cabalizing afrp-0.4. This isn't GADTed version, and doesn't include any extensions. If you want to see and use GADTed version, you must download higher version.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          ];
        buildable = true;
        };
      };
    }