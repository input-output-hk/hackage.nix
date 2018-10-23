{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "enumerator-fd";
        version = "0.1";
      };
      license = "MIT";
      copyright = "Copyright (c) John Millikin 2010";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "http://john-millikin.com/software/enumerator/";
      url = "";
      synopsis = "Enumerator instances for monads-fd classes";
      description = "";
      buildType = "Simple";
    };
    components = {
      "enumerator-fd" = {
        depends  = [
          (hsPkgs.monads-fd)
          (hsPkgs.enumerator)
        ] ++ (if compiler.isGhc && compiler.version.ge "6.10"
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.extensible-exceptions)
          ]);
      };
    };
  }