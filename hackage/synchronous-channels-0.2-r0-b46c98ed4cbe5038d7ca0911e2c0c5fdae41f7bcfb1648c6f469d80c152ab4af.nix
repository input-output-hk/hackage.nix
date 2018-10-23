{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "synchronous-channels";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tov@ccs.neu.edu";
      author = "Jesse A. Tov <tov@ccs.neu.edu>";
      homepage = "";
      url = "";
      synopsis = "Synchronous communication channels";
      description = "Synchronous communication channels.  These are similar to\n'Control.Concurrent.Chan.Chan',\nbut a writer blocks until it can synchronize with a reader.";
      buildType = "Simple";
    };
    components = {
      "synchronous-channels" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }