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
      specVersion = "1.6";
      identifier = {
        name = "yesod-fb";
        version = "0.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
      author = "Felipe Lessa";
      homepage = "https://github.com/meteficha/yesod-fb";
      url = "";
      synopsis = "Useful glue functions between the fb library and Yesod.";
      description = "This package contains useful glue functions between the fb\npackage (<http://hackage.haskell.org/package/fb>) and Yesod.\nThese functions can't be included on the fb package itself\nbecause it should not depend on Yesod.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yesod-core)
          (hsPkgs.fb)
          (hsPkgs.crypto-api)
          (hsPkgs.http-conduit)
          (hsPkgs.wai)
          (hsPkgs.conduit)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.bytestring)
        ];
      };
    };
  }