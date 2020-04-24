{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "blaze-builder"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jaspervdj@gmail.com, iridcode@gmail.com";
      author = "Jasper Van der Jeugt, Simon Meier";
      homepage = "http://github.com/jaspervdj/blaze-builder";
      url = "";
      synopsis = "Efficient construction of bytestrings.";
      description = "This library provides an abstraction of buffered output of\nbyte streams and several convenience functions to exploit\nit. For example, it allows to efficiently serialize\nHaskell values to lazy bytestrings with a large average\nchunk size. The large average chunk size allows to make\ngood use of cache prefetching in later processing steps\n(e.g. compression) and reduces the sytem call overhead\nwhen writing the resulting lazy bytestring to a file or\nsending it over the network.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }