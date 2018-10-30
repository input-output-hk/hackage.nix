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
      specVersion = "1.1.4";
      identifier = {
        name = "hoogle";
        version = "4.0.0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "Neil Mitchell 2004-2008";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "http://www.haskell.org/hoogle/";
      url = "";
      synopsis = "Haskell API Search";
      description = "Hoogle is a Haskell API search engine, which allows you to\nsearch many standard Haskell libraries by either function name,\nor by approximate type signature.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hoogle" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.safe)
            (hsPkgs.containers)
            (hsPkgs.uniplate)
            (hsPkgs.mtl)
            (hsPkgs.array)
          ];
        };
      };
    };
  }