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
      specVersion = "1.10";
      identifier = {
        name = "strict-base";
        version = "0.4.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2017 Daniel Mendler, 2006-2007 Roman Leshchinskiy";
      maintainer = "Daniel Mendler <mail@daniel-mendler.de>";
      author = "Daniel Mendler <mail@daniel-mendler.de>, Roman Leshchinskiy <rl@cse.unsw.edu.au>";
      homepage = "https://github.com/minad/strict-base";
      url = "";
      synopsis = "Strict versions of base data types.";
      description = "This package provides strict versions of some standard Haskell data\ntypes (Pairs, Maybe, Either, List and NonEmpty).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups);
      };
    };
  }