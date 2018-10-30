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
        name = "data-variant";
        version = "0.28.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tdammers@gmail.com";
      author = "Tobias Dammers";
      homepage = "https://bitbucket.org/tdammers/data-variant";
      url = "";
      synopsis = "A variant data type, useful for modeling dynamically-typed programming languages";
      description = "Implements a 'variant' data type that can hold the\nusual suspects: scalars (integers, floats, strings),\nlists, association lists, booleans, null, and first-class\nfunctions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.safe)
        ];
      };
    };
  }