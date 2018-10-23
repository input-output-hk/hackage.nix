{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = {
        name = "ivar-simple";
        version = "0.3";
      };
      license = "MIT";
      copyright = "(c) 2008-2012 Bertram Felgenhauer";
      maintainer = "Bertram Felgenhauer <int-e@gmx.de>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Write once concurrency primitives.";
      description = "@IVar@s are write-once (immutable) variables.\n\nThey can be read, an operation that will block until a value was written\nto the variable. They can be written to exactly once.";
      buildType = "Simple";
    };
    components = {
      "ivar-simple" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }