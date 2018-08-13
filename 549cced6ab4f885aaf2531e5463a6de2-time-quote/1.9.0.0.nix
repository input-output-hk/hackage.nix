{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "time-quote";
        version = "1.9.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "(C) 2018  Thomas Tuegel <ttuegel@mailbox.org>";
      maintainer = "Thomas Tuegel <ttuegel@mailbox.org>";
      author = "Thomas Tuegel <ttuegel@mailbox.org>";
      homepage = "https://github.com/ttuegel/time-quote#readme";
      url = "";
      synopsis = "Quasi-quoters for dates and times";
      description = "@time-quote@ provides quasi-quoters to parse dates and times according to ISO 8601 formats. By using quasi-quotes for literals, parse errors are found by the compiler.";
      buildType = "Simple";
    };
    components = {
      "time-quote" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
        ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.doctest-discover)
            (hsPkgs.template-haskell)
            (hsPkgs.time)
          ];
        };
      };
    };
  }