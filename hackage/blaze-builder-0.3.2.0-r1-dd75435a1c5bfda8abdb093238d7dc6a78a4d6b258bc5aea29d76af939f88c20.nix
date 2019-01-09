{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "blaze-builder"; version = "0.3.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2010 Simon Meier\n2010 Jasper Van der Jeugt";
      maintainer = "Simon Meier <iridcode@gmail.com>";
      author = "Jasper Van der Jeugt, Simon Meier";
      homepage = "http://github.com/meiersi/blaze-builder";
      url = "";
      synopsis = "Efficient buffered output.";
      description = "This library provides an abstraction of buffered output of\nbyte streams and several convenience functions to exploit\nit. For example, it allows to efficiently serialize\nHaskell values to lazy bytestrings with a large average\nchunk size. The large average chunk size allows to make\ngood use of cache prefetching in later processing steps\n(e.g. compression) and reduces the system call overhead\nwhen writing the resulting lazy bytestring to a file or\nsending it over the network.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.text) ];
        };
      };
    }