{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "simple-download";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Shao Cheng";
      maintainer = "Shao Cheng <astrohavoc@gmail.com>";
      author = "";
      homepage = "https://github.com/TerrorJack/simple-download#readme";
      url = "";
      synopsis = "A simple wrapper of http-conduit for file download.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "simple-download" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conduit-combinators)
          (hsPkgs.http-client)
          (hsPkgs.http-conduit)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
    };
  }