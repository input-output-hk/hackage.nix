{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      integer-simple = false;
    };
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "bytestring-show";
        version = "0.3.5.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dan Doel <dan.doel@gmail.com>";
      author = "Dan Doel";
      homepage = "http://code.haskell.org/~dolio/";
      url = "";
      synopsis = "Efficient conversion of values into readable byte strings.";
      description = "Efficient conversion of values into readable byte strings.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.array)
          (hsPkgs.containers)
        ] ++ pkgs.lib.optional (flags.integer-simple) (hsPkgs.integer-simple)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.11" && !flags.integer-simple) (hsPkgs.integer-gmp)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.9" && (compiler.isGhc && compiler.version.lt "6.11") && !flags.integer-simple) (hsPkgs.integer);
      };
    };
  }