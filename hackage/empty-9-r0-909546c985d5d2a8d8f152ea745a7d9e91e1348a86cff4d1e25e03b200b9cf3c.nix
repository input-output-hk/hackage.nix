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
      specVersion = "1.2";
      identifier = {
        name = "empty";
        version = "9";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Ceci n'est pas une package";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {};
    };
  }