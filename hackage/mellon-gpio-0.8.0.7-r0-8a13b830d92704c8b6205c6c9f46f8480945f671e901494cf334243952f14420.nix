{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { test-hlint = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "mellon-gpio";
        version = "0.8.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018, Quixoftic, LLC";
      maintainer = "Drew Hess <dhess-src@quixoftic.com>";
      author = "Drew Hess <dhess-src@quixoftic.com>";
      homepage = "https://github.com/quixoftic/mellon#readme";
      url = "";
      synopsis = "GPIO support for mellon";
      description = "@mellon-gpio@ provides a GPIO-driven @mellon-core@ @Device@.\nCurrently, it provides support for Linux @sysfs@-based GPIO.";
      buildType = "Simple";
    };
    components = {
      "mellon-gpio" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hpio)
          (hsPkgs.mellon-core)
          (hsPkgs.protolude)
        ] ++ pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.0")) [
          (hsPkgs.fail)
          (hsPkgs.semigroups)
        ];
      };
      tests = {
        "hlint" = {
          depends  = pkgs.lib.optionals (!(!flags.test-hlint)) [
            (hsPkgs.base)
            (hsPkgs.hlint)
            (hsPkgs.protolude)
          ];
        };
      };
    };
  }