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
      specVersion = "0";
      identifier = {
        name = "value-supply";
        version = "0.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "iavor.diatchki@gmail.com";
      author = "Iavor S. Diatchki";
      homepage = "";
      url = "";
      synopsis = "A library for generating values without having to thread state.";
      description = "This library can be used to generate values (for example, new names)\nwithout the need to thread state.  This means that functions that\nneed to generate new values only need a supply object as an argument,\nand they do not need to return a new supply object as a result.\nThis decreases the number of data-dependencies in a program, which\nmakes it easier to exploit parallelism.\nThe technique for generating new values is based on the paper\n''On Generating Unique Names''\nby Lennart Augustsson, Mikael Rittri, and Dan Synek.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }