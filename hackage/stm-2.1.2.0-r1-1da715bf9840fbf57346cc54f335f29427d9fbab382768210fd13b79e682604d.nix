{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "stm";
        version = "2.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Software Transactional Memory";
      description = "A modular composable concurrency abstraction.";
      buildType = "Simple";
    };
    components = {
      "stm" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.array)
        ] ++ [
          (hsPkgs.base)
        ]) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "6.10") (hsPkgs.base);
      };
    };
  }