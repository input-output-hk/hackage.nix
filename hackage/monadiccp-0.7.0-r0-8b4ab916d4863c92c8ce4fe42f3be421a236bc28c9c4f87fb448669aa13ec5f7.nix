{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      runtimegecode = false;
      debug = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "monadiccp";
        version = "0.7.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tom.schrijvers@cs.kuleuven.be";
      author = "Tom Schrijvers, Pieter Wuille";
      homepage = "http://www.cs.kuleuven.be/~toms/MCP/";
      url = "";
      synopsis = "Constraint Programming";
      description = "Monadic Constraint Programming framework";
      buildType = "Simple";
    };
    components = {
      "monadiccp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.haskell98)
          (hsPkgs.random)
          (hsPkgs.pretty)
          (hsPkgs.Monatron)
        ];
        libs = pkgs.lib.optionals (flags.runtimegecode) [
          (pkgs."gecodesupport")
          (pkgs."gecodeset")
          (pkgs."gecodeint")
          (pkgs."gecodekernel")
          (pkgs."gecodesearch")
        ];
        frameworks = pkgs.lib.optional (flags.runtimegecode) (pkgs."gecode");
      };
    };
  }