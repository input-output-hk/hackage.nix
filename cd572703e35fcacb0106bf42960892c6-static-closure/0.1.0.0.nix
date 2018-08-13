{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "static-closure";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Clinton Mead";
      maintainer = "clintonmead@gmail.com";
      author = "Clinton Mead";
      homepage = "https://github.com/clintonmead/static-closure#readme";
      url = "";
      synopsis = "Serialisable static pointers to functions";
      description = "A more generalised and expanded version of the ideas found in [distributed-closure](https://hackage.haskell.org/package/distributed-closure) in the following ways:-\n\n1. This library allows for the core serialisable type to any type, although we currently only implement \\\"Binary\\\".\n\n2. Template Haskell is used to implement dictionary instances for all instances of \\\"Binary\\\" in all packages shipped with GHC with the assistance of [ghc-instances](https://hackage.haskell.org/package/ghc-instances).\n\nThis library is very much a work in progress. It is largely untested except to check it compiles. Future tasks to do include:-\n\n1. Writing some test cases to make sure this actually works.\n\n2. Integrating with [freelude](https://hackage.haskell.org/package/freelude), the restricted \\\"pure\\\" function is perfect to define in \\\"freelude\\\".\n\n3. Writing some more Template Haskell functions to allow easy integration with user defined types.\n\n4. Linking this up with [acid-state](https://hackage.haskell.org/package/acid-state) in a somewhat sensible way.";
      buildType = "Simple";
    };
    components = {
      "static-closure" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.constraints)
          (hsPkgs.containers)
          (hsPkgs.ghc-instances)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }