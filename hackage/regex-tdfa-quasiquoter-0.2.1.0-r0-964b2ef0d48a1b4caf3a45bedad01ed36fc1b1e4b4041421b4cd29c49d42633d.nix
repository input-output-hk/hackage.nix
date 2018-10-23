{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "regex-tdfa-quasiquoter";
        version = "0.2.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015, Eric Brisco";
      maintainer = "eric.brisco@gmail.com";
      author = "Eric Brisco";
      homepage = "http://github.com/erisco/regex-tdfa-quasiquoter";
      url = "";
      synopsis = "Quasi-quoter for TDFA (extended POSIX) regular\nexpressions.";
      description = "Quasi-quoter for TDFA (extended POSIX) regular\nexpressions.";
      buildType = "Simple";
    };
    components = {
      "regex-tdfa-quasiquoter" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.regex-tdfa)
        ];
      };
    };
  }