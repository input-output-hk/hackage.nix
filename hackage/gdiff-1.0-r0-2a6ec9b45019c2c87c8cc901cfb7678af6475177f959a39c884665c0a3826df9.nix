{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "gdiff"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eelco at lempsink nl";
      author = "Eelco Lempsink, Andres Löh";
      homepage = "";
      url = "";
      synopsis = "Generic diff and patch";
      description = "Get an efficient, optimal, type-safe diff and patch function for your\ndatatypes of choice by defining a simple GADT and some class instances.\n\nExtracted from Eelco Lempsink's Thesis (<http://eelco.lempsink.nl/thesis.pdf>).";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }