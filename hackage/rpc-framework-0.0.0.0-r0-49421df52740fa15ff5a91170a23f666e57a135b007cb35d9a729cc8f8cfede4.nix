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
        name = "rpc-framework";
        version = "0.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mmirman@andrew.cmu.edu";
      author = "Matthew Mirman";
      homepage = "http://github.com/mmirman/haskogeneous";
      url = "";
      synopsis = "a remote procedure call framework";
      description = "A library and framework for making remote procedure calls in haskell easy and typesafe.  See http://github.com/mmirman/haskogeneous for more information.";
      buildType = "Simple";
    };
    components = {
      "rpc-framework" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.network)
        ];
      };
      exes = {
        "rpc-test" = {
          depends  = [
            (hsPkgs.rpc-framework)
            (hsPkgs.base)
          ];
        };
      };
    };
  }