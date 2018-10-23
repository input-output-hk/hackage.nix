{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "simtreelo";
        version = "0.1.0.3";
      };
      license = "GPL-3.0-only";
      copyright = "(c) 2014, 2015 Marcelo Garlet Millani";
      maintainer = "marcelogmillani@gmail.com";
      author = "Marcelo Garlet Millani";
      homepage = "";
      url = "";
      synopsis = "Loader for data organized in a tree";
      description = "This library loads a string or file into a Tree. The hierarchy is given solely by the indentation, meaning that the input is human-readable.";
      buildType = "Simple";
    };
    components = {
      "simtreelo" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }