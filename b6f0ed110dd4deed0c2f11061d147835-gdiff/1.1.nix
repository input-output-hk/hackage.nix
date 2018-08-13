{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "gdiff";
        version = "1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andres Löh <andres@well-typed.com>";
      author = "Eelco Lempsink, Andres Löh";
      homepage = "https://github.com/eelco/gdiff";
      url = "";
      synopsis = "Generic diff and patch";
      description = "Get an efficient, optimal, type-safe diff and patch function for your\ndatatypes of choice by defining a simple GADT and some class instances.\n\nExtracted from Eelco Lempsink's Thesis (<http://eelco.lempsink.nl/thesis.pdf>).";
      buildType = "Simple";
    };
    components = {
      "gdiff" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }