{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "sieve"; version = "0.1.0.0"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "jsinglet@gmail.com";
      author = "John L. Singleton";
      homepage = "http://www.the-singleton.com";
      url = "";
      synopsis = "Sieve is an implementation of the Sieve abstract data type.";
      description = "A Sieve is a data type with properties analogous to a physical Sieve and it is useful for building up lists of data wherein a specific constraint must be met that cannot be achieved using normal type semantics. A Sieve encapsulates a list that can only hold a certain type, specified by a identity function and is preferable to creating or building up lists by using conditional blocks or by the progressive use of filter. This is especially advantageous if a list is to be passed around and used as an accumulator. In such a configuration, the original declaring type is passed around with the Sieve so that it can be used transparently in subsequent areas of the program.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }