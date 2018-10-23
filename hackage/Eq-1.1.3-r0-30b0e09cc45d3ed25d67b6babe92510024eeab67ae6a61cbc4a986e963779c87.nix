{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      debug = false;
      staticlinking = false;
      optimize = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "Eq";
        version = "1.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Vincent Berthoux <vincent.berthoux@gmail.com>";
      author = "Vincent Berthoux";
      homepage = "";
      url = "";
      synopsis = "Render math formula in ASCII, and perform some simplifications";
      description = "Haskell formula manipulation program";
      buildType = "Simple";
    };
    components = {
      exes = {
        "eq" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.HaXml)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.template-haskell)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.array)
          ];
        };
      };
    };
  }