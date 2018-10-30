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
        name = "patch-combinators";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012, Emil Axelsson";
      maintainer = "Emil Axelsson <emax@chalmers.se>";
      author = "Koen Claessen, Emil Axelsson";
      homepage = "";
      url = "";
      synopsis = "A library for patching functions and data structures";
      description = "A library for patching functions and data structures";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }