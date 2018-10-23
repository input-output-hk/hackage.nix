{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "AC-Vector";
        version = "2.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "MathematicalOrchid@hotmail.com";
      author = "Andrew Coppin";
      homepage = "";
      url = "";
      synopsis = "Efficient geometric vectors and transformations.";
      description = "This Haskell library implements several small vectors types\nwith @Double@ fields, with seperate types for each size of\nvector, and a type class for handling vectors generally.\n(Note that although this package is listed in the \\\"graphics\\\"\ncategory, the package itself has no graphics facilities. It\njust contains data structures that are useful for graphics\nwork.)\nThe @Vector@ class now implies @Num@ and @Fractional@.\nHopefully this will be the last breaking change for a while.\nAlso added @vpromote@, @(\\/|)@ and @(|\\/)@.";
      buildType = "Simple";
    };
    components = {
      "AC-Vector" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }