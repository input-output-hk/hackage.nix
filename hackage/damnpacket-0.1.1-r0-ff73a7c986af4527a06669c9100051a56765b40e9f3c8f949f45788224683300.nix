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
        name = "damnpacket";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "me@joelt.io";
      author = "Joel Taylor";
      homepage = "https://github.com/joelteon/damnpacket";
      url = "";
      synopsis = "Parsing dAmn packets";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.text)
        ];
      };
      tests = {
        "render" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.damnpacket)
            (hsPkgs.containers)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
          ];
        };
      };
      benchmarks = {
        "parse" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.damnpacket)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.text)
          ];
        };
      };
    };
  }