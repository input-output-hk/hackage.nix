{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      buildexamples = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "HandsomeSoup";
        version = "0.3.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bluemangroupie@gmail.com";
      author = "Aditya Bhargava";
      homepage = "https://github.com/egonSchiele/HandsomeSoup";
      url = "";
      synopsis = "Work with HTML more easily in HXT";
      description = "See examples and full readme on the Github page: https:\\/\\/github.com\\/egonSchiele\\/HandsomeSoup";
      buildType = "Simple";
    };
    components = {
      "HandsomeSoup" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.HTTP)
          (hsPkgs.parsec)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.MaybeT)
          (hsPkgs.hxt)
          (hsPkgs.network)
          (hsPkgs.network-uri)
          (hsPkgs.hxt-http)
        ];
      };
      exes = {
        "handsomesoup" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HandsomeSoup)
            (hsPkgs.hxt)
          ];
        };
      };
      tests = {
        "hspec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.HandsomeSoup)
            (hsPkgs.hxt)
          ];
        };
      };
    };
  }