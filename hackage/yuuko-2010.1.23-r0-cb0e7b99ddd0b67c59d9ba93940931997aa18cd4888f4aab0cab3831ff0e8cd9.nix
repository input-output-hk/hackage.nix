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
        name = "yuuko";
        version = "2010.1.23";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/yuuko";
      url = "";
      synopsis = "A transcendental HTML parser gently wrapping the HXT library";
      description = "Parse without thinking ...\n\nyuuko \"//body\" \"<html><body>hi</body></html>\"\n\n> [\"hi\"]";
      buildType = "Simple";
    };
    components = {
      "yuuko" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hxt)
        ];
      };
    };
  }