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
    flags = { template-haskell = true; };
    package = {
      specVersion = "1.18";
      identifier = { name = "micro-recursion-schemes"; version = "5.0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2015 Edward A. Kmett, 2018 Vanessa McHale";
      maintainer = "vmchale@gmail.com";
      author = "Vanessa McHale, Edward A. Kmett";
      homepage = "";
      url = "";
      synopsis = "Simple recursion schemes";
      description = "This package provides the core functionality of [recursion-schemes](http://hackage.haskell.org/package/recursion-schemes), but without odious dependencies on unneeded packages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = if flags.template-haskell
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          ];
        build-tools = pkgs.lib.optional (flags.template-haskell) (hsPkgs.buildPackages.cpphs.components.exes.cpphs or (pkgs.buildPackages.cpphs or (errorHandler.buildToolDepError "cpphs:cpphs")));
        buildable = true;
      };
      tests = {
        "Expr" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."micro-recursion-schemes" or (errorHandler.buildDepError "micro-recursion-schemes"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
      };
    };
  }