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
        name = "superbuffer";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Alexander Thiemann <mail@athiemann.net>";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann";
      homepage = "https://github.com/agrafix/superbuffer#readme";
      url = "";
      synopsis = "Efficiently build a bytestring from smaller chunks";
      description = "Efficiently (both fast and memory efficient) build a bytestring from smaller chunks";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.HTF)
            (hsPkgs.QuickCheck)
            (hsPkgs.superbuffer)
          ];
        };
      };
      benchmarks = {
        "sbuf-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.superbuffer)
          ];
        };
      };
    };
  }