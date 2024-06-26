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
      specVersion = "1.2";
      identifier = { name = "hole"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "thomasedingcode@gmail.com";
      author = "Thomas Eding";
      homepage = "";
      url = "";
      synopsis = "Higher kinded type removal";
      description = "A type that can be used to cut out a type. This can be useful in records, for instance.";
      buildType = "Simple";
    };
    components = { "library" = { buildable = true; }; };
  }