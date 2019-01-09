{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "IOSpec"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Wouter Swierstra <wss@cs.nott.ac.uk>";
      author = "Wouter Swierstra";
      homepage = "http://www.cs.nott.ac.uk/~wss/repos/IOSpec";
      url = "";
      synopsis = "A pure specification of the IO monad.";
      description = "At the moment this package consists of four\nmodules:\n\n* \"Test.IOSpec.Teletype\": a specification of getChar and putChar.\n\n* \"Test.IOSpec.IORef\": a specification of most functions on IORefs.\n\n* \"Test.IOSpec.Concurrent\": specification of forkIO and MVars.\n\n* \"Data.Stream\": a library for manipulating infinite lists.\n\nThere are several well-documented examples included with the source distribution.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.mtl) (hsPkgs.QuickCheck) ];
        };
      };
    }