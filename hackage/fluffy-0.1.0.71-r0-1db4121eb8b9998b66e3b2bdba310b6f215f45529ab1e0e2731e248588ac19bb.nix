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
        name = "fluffy";
        version = "0.1.0.71";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2017 Johann Lee <me@qinka.pro>";
      maintainer = "qinka@live.com";
      author = "Johann Lee";
      homepage = "";
      url = "";
      synopsis = "A simple web application as a online practice website for XDU SE 2017 fall SPM.";
      description = "A simple web application as a online practice website for XDU SE 2017 fall SPM.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "fluffy" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.yesod-core)
            (hsPkgs.yesod-static)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.MonadRandom)
            (hsPkgs.aeson)
            (hsPkgs.resource-pool)
            (hsPkgs.time)
            (hsPkgs.cmdargs)
            (hsPkgs.postgresql-simple)
            (hsPkgs.uuid-types)
          ];
        };
      };
    };
  }