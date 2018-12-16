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
      specVersion = "1.4";
      identifier = {
        name = "tccli";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "voker57@gmail.com";
      author = "Voker57";
      homepage = "http://bitcheese.net/wiki/code/tccli";
      url = "";
      synopsis = "TokyoCabinet CLI interface";
      description = "Simple TokyoCabinet CLI interface";
      buildType = "Simple";
    };
    components = {
      exes = {
        "tchcli" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tokyocabinet-haskell)
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
          ];
        };
      };
    };
  }