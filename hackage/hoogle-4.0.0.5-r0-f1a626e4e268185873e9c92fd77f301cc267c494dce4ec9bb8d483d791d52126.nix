{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hoogle"; version = "4.0.0.5"; };
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
          depends = [
            (hsPkgs.parsec)
            (hsPkgs.filepath)
            (hsPkgs.safe)
            (hsPkgs.uniplate)
            (hsPkgs.mtl)
            (hsPkgs.time)
            ] ++ (if flags.splitbase
            then [
              (hsPkgs.base)
              (hsPkgs.directory)
              (hsPkgs.process)
              (hsPkgs.containers)
              (hsPkgs.array)
              (hsPkgs.bytestring)
              ]
            else [ (hsPkgs.base) ]);
          };
        };
      };
    }