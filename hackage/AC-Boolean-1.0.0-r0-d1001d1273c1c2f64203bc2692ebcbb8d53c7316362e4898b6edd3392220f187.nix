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
      specVersion = "1.6";
      identifier = {
        name = "AC-Boolean";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "MathematicalOrchid@hotmail.com";
      author = "Andrew Coppin";
      homepage = "";
      url = "";
      synopsis = "Handle Boolean values generatically.";
      description = "This package provides various functions and classes for dealing\nwith things which are like Boolean values. It also defines a\nfew useful instances. The main benefit is the ability to use\nthe usual @&&@, etc. operators without having to invent new\noperator names for every kind of Bool-like thing.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }