{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      readline = true;
      haskeline = true;
      linuxstatic = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "CPL";
        version = "0.0.9";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "masahiro.sakai@gmail.com";
      author = "Masahiro Sakai (masahiro.sakai@gmail.com)";
      homepage = "https://github.com/msakai/cpl";
      url = "";
      synopsis = "An interpreter of Hagino's Categorical Programming Language (CPL).";
      description = "CPL is a functional programming language based on category\ntheory. Data types are declared in a categorical manner by\nadjunctions. Data types that can be handled include the terminal\nobject, the initial object, the binary product functor, the binary\ncoproduct functor, the exponential functor, the natural number object,\nthe functor for finite lists, and the functor for infinite lists.\nEach data type is declared with its basic operations or\nmorphisms. Programs consist of these morphisms, and execution of\nprograms is the reduction of elements (i.e. special morphisms) to\ntheir canonical form.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cpl" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.parsec)
          ] ++ (if flags.readline
            then [ (hsPkgs.readline) ]
            else pkgs.lib.optional (flags.haskeline) (hsPkgs.haskeline));
        };
      };
    };
  }