{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "htrace";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Eugene Kirpichov";
      maintainer = "ekirpichov@gmail.com";
      author = "Eugene Kirpichov";
      homepage = "";
      url = "";
      synopsis = "Hierarchical tracing for debugging of lazy evaluation";
      description = "Hierarchical tracing (like Debug.Trace.trace but with indentation)\nfor debugging of lazy evaluation";
      buildType = "Simple";
    };
    components = {
      "htrace" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }