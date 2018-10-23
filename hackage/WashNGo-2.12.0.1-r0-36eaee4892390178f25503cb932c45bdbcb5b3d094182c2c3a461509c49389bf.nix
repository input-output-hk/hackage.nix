{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "WashNGo";
        version = "2.12.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2001-2006, Peter Thiemann";
      maintainer = "Marc Weber <marco-oweber@gmx.de>";
      author = "Peter Thiemann <thiemann@informatik.uni-freiburg.de>";
      homepage = "http://www.informatik.uni-freiburg.de/~thiemann/haskell/WASH/";
      url = "";
      synopsis = "WASH is a family of EDSLs for programming Web applications in Haskell.";
      description = "WASH is a family of embedded domain specific languages (EDSL) for programming Web applications in Haskell.";
      buildType = "Simple";
    };
    components = {
      "WashNGo" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.regex-compat)
          (hsPkgs.haskell98)
          (hsPkgs.parsec)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "wash2hs" = {};
        "washc" = {
          depends  = [
            (hsPkgs.ghc-paths)
            (hsPkgs.process)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }