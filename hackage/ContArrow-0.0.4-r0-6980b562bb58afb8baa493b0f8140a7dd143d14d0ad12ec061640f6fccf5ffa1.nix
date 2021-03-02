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
      specVersion = "1.0";
      identifier = { name = "ContArrow"; version = "0.0.4"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2007, 2008 Evgeny Jukov";
      maintainer = "Evgeny Jukov <masloed@gmail.com>";
      author = "Evgeny Jukov";
      homepage = "http://macode.sourceforge.net/ContArrow";
      url = "";
      synopsis = "Control.Arrow.Transformer.Cont";
      description = "A library providing Control.Arrow.Transformer.Cont";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."arrows" or (errorHandler.buildDepError "arrows"))
          ];
        buildable = true;
        };
      };
    }