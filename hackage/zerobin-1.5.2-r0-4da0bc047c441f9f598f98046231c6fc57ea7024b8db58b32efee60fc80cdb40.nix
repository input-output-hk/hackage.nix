{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      nodejs = false;
      cli = true;
    };
    package = {
      specVersion = "1.20";
      identifier = {
        name = "zerobin";
        version = "1.5.2";
      };
      license = "MIT";
      copyright = "2015, Zalora South East Asia Pte. Ltd\n2017, Igor Pashev <pashev.igor@gmail.com>";
      maintainer = "Igor Pashev <pashev.igor@gmail.com>";
      author = "Igor Pashev";
      homepage = "";
      url = "";
      synopsis = "Post to 0bin services";
      description = "Post encrypted content to 0bin sites\nlike http://0bin.net or https://paste.ec";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.http-conduit)
          (hsPkgs.memory)
        ];
      };
      exes = {
        "zerobin" = {
          depends  = pkgs.lib.optionals (flags.cli) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.docopt)
            (hsPkgs.zerobin)
            (hsPkgs.raw-strings-qq)
          ];
        };
        "zerobin-nodejs" = {
          depends  = pkgs.lib.optionals (flags.nodejs) [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.zerobin)
            (hsPkgs.process)
          ];
        };
      };
    };
  }