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
      specVersion = "1.10";
      identifier = {
        name = "servant-generic";
        version = "0.1.0.3";
      };
      license = "MIT";
      copyright = "2017 Patrick Chilton";
      maintainer = "chpatrick@gmail.com";
      author = "Patrick Chilton";
      homepage = "";
      url = "";
      synopsis = "Specify Servant APIs with records.";
      description = "Specify Servant APIs with records instead of @:\\<|\\>@ trees. See the <https://github.com/chpatrick/servant-generic/blob/master/README.md#tldr README> for more information. __This package has been merged into servant 0.14.1, please use that instead if available.__";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.servant)
          (hsPkgs.servant-server)
        ];
      };
      tests = {
        "example-basic" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.servant)
            (hsPkgs.servant-server)
            (hsPkgs.servant-generic)
            (hsPkgs.text)
            (hsPkgs.warp)
            (hsPkgs.network-uri)
          ];
        };
      };
    };
  }