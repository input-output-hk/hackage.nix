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
        name = "type-combinators";
        version = "0.2.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Kyle Carter, all rights reserved";
      maintainer = "kylcarte@gmail.com";
      author = "Kyle Carter";
      homepage = "https://github.com/kylcarte/type-combinators";
      url = "";
      synopsis = "A collection of data types for type-level programming";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }