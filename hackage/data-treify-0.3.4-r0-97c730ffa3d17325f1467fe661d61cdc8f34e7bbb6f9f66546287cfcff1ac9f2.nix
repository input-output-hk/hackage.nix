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
      specVersion = "1.6";
      identifier = {
        name = "data-treify";
        version = "0.3.4";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2014 Andy Gill and Conal Elliott";
      maintainer = "Conal Elliott <conal@conal.net>";
      author = "Andy Gill & Conal Elliott";
      homepage = "http://ittc.ku.edu/~andygill/data-reify.php";
      url = "";
      synopsis = "Reify a recursive data structure into an explicit graph.";
      description = "This package is a (probably temporary) fork of Andy gill's data-reify package.\nI've tweaked it for typed syntax representations for use with GADTs.\n\n'data-reify' provided the ability to turn recursive structures into explicit graphs.\nMany (implicitly or explicitly) recursive data structure can be given this ability, via\na type class instance. This gives an alternative to using 'Ref' for observable sharing.\n\nObservable sharing in general is unsafe, so we use the IO monad to bound this effect,\nbut can be used safely even with 'unsafePerformIO' if some simple conditions are met.\nTypically this package will be used to tie the knot with DSL's that depend of\nobservable sharing, like Lava.\n\nProviding an instance for 'MuRef' is the mechanism for allowing a structure to be\nreified into a graph, and several examples of this are provided.\n\nVersion 0.2 of 'data-reify' uses 'StableName's, and is much faster.\nVersion 0.3 provided two versions of 'MuRef', the mono-typed version, for trees of a single type,\nand the dynamic-typed version, for trees of different types.\n\n&#169; 2009-2014 Andy Gill & Conal Elliott; BSD3 license.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.ty)
        ];
      };
    };
  }