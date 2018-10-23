{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "lists";
        version = "0.4.2";
      };
      license = "BSD-3-Clause";
      copyright = "2013 Chris Done, 2004-2011 John Goerzen";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "Functions for dealing with lists";
      description = "Functions for dealing with lists";
      buildType = "Simple";
    };
    components = {
      "lists" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.split)
          (hsPkgs.list-extras)
        ];
      };
    };
  }