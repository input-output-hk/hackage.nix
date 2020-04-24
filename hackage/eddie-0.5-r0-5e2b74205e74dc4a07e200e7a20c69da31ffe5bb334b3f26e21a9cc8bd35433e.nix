{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "eddie"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Mike Meyer";
      maintainer = "mwm@mired.org";
      author = "Mike Meyer";
      homepage = "http://eddie.googlecode.com/";
      url = "";
      synopsis = "Command line file filtering with haskell";
      description = "A tool to let you use short haskell expressions to filter\nfiles at the command line.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "eddie" = {
          depends = [
            (hsPkgs."hint" or ((hsPkgs.pkgs-errors).buildDepError "hint"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        };
      };
    }