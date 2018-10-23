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
        name = "zifter-hlint";
        version = "0.0.0.1";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2017 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "http://cs-syd.eu";
      url = "";
      synopsis = "zifter-hlint";
      description = "zifter-hlint";
      buildType = "Simple";
    };
    components = {
      "zifter-hlint" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.hlint)
          (hsPkgs.path)
          (hsPkgs.path-io)
          (hsPkgs.safe)
          (hsPkgs.zifter)
        ];
      };
    };
  }