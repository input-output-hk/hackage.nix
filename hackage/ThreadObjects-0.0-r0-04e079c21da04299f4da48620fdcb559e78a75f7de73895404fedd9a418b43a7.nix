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
        name = "ThreadObjects";
        version = "0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Timothy Hobbs<timothyhobbs@seznam.cz>";
      author = "Timothy Hobbs";
      homepage = "";
      url = "";
      synopsis = "Mutable objects that reside in their own threads.";
      description = "Provides mutable objects that reside in their own threads and have increadible resilience to runtime errors.  Are really usefull for a Model-View program archtecture.";
      buildType = "Simple";
    };
    components = {
      "ThreadObjects" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }