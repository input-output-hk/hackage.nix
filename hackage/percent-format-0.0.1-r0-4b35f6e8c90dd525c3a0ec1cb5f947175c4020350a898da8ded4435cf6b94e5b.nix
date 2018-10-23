{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "percent-format";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rudy Matela <rudy@matela.com.br>";
      author = "Rudy Matela <rudy@matela.com.br>";
      homepage = "https://github.com/rudymatela/percent-format#readme";
      url = "";
      synopsis = "simple printf-style string formatting";
      description = "The @Text.PercentFormat@ library provides printf-style string formatting.  It\nprovides a @%@ operator (as in Ruby or Python) and uses the old\nC-printf-style format you know and love.";
      buildType = "Simple";
    };
    components = {
      "percent-format" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "number" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.percent-format)
            (hsPkgs.leancheck)
          ];
        };
        "scientific" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.percent-format)
            (hsPkgs.leancheck)
          ];
        };
        "prop" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.percent-format)
            (hsPkgs.leancheck)
          ];
        };
        "quotient" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.percent-format)
            (hsPkgs.leancheck)
          ];
        };
        "unit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.percent-format)
            (hsPkgs.leancheck)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.percent-format)
            (hsPkgs.leancheck)
          ];
        };
      };
    };
  }