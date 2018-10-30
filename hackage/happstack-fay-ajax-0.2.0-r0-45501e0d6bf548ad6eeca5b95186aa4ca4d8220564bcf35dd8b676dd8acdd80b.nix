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
      specVersion = "1.8";
      identifier = {
        name = "happstack-fay-ajax";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy@n-heptane.com";
      author = "Jeremy Shaw";
      homepage = "http://www.happstack.com/";
      url = "";
      synopsis = "Support for using Fay with Happstack";
      description = "Fay is strict subset of Happstack which can be compiled\nto Javascript. This library provides some utilities for client-server RPC.\n\nThis package provides the client-side libraries. See also happstack-fay.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.fay-base)
          (hsPkgs.fay-jquery)
        ];
      };
    };
  }