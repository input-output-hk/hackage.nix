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
      specVersion = "1.14";
      identifier = {
        name = "RxHaskell";
        version = "0.1";
      };
      license = "MIT";
      copyright = "Copyright (c) 2013 Justin Spahr-Summers";
      maintainer = "justin.spahrsummers@gmail.com";
      author = "Justin Spahr-Summers";
      homepage = "https://github.com/jspahrsummers/RxHaskell";
      url = "";
      synopsis = "Reactive Extensions for Haskell";
      description = "An implementation of functional reactive programming based on Microsoft's Reactive Extensions for .NET: <http://msdn.microsoft.com/en-us/library/hh242985(v=VS.103).aspx>.\n\nRxHaskell offers a monadic API, making it easier to interleave side effects and imperative-style code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.stm)
          (hsPkgs.transformers)
        ];
      };
    };
  }