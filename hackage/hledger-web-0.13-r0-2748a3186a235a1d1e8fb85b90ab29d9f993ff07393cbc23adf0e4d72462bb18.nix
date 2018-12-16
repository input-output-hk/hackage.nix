{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { production = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hledger-web";
        version = "0.13";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Simon Michael <simon@joyful.com>";
      author = "Simon Michael <simon@joyful.com>";
      homepage = "http://hledger.org";
      url = "";
      synopsis = "A hledger add-on command providing a web interface.";
      description = "A hledger add-on command providing a web interface.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hledger-web" = {
          depends = [
            (hsPkgs.hledger)
            (hsPkgs.hledger-lib)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.parsec)
            (hsPkgs.safe)
            (hsPkgs.io-storage)
            (hsPkgs.yesod)
            (hsPkgs.hamlet)
            (hsPkgs.failure)
            (hsPkgs.template-haskell)
            (hsPkgs.wai-extra)
            (hsPkgs.file-embed)
          ];
        };
      };
    };
  }