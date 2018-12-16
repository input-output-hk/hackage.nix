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
      specVersion = "1.10";
      identifier = {
        name = "type-iso";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "janos.tapolczai@gmail.com";
      author = "Janos Tapolczai";
      homepage = "https://github.com/ombocomp/type-iso";
      url = "";
      synopsis = "Typeclasses for injective relations and isomorphisms between types.";
      description = "This package defines \\\"can be cast to\\\" relations between types: two types a and b are an instance of Injective if there's an injective function from a to b. If there is also an injective function from b to a, a and b are instances of Iso, meaning that one can convert back and forth losslessly (up to some appropriate notion of equality). The main purpose of this little package is to provide easy casting between the common string types (String, strict/lazy Text) and numeric types (Integers, Peano numbers), without having to look up the names of the various conversion functions all the time.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.nats)
          (hsPkgs.text)
          (hsPkgs.numericpeano)
          (hsPkgs.data-default)
        ];
      };
    };
  }