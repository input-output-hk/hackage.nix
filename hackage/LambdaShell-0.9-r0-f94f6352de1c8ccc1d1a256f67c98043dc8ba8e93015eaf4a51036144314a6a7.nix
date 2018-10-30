{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "LambdaShell";
        version = "0.9";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "robdockins AT fastmail DOT fm";
      author = "Robert Dockins";
      homepage = "";
      url = "";
      synopsis = "Simple shell for evaluating lambda expressions";
      description = "The lambda shell is a feature-rich shell environment and command-line tool for\nevaluating terms of the pure, untyped lambda calculus.  The Lambda\nShell builds on the shell creation framework Shellac, and showcases\nmost of Shellac's features.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "lambdaShell" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.readline)
            (hsPkgs.Shellac)
            (hsPkgs.Shellac-readline)
          ];
          libs = [ (pkgs."readline") ];
        };
      };
    };
  }