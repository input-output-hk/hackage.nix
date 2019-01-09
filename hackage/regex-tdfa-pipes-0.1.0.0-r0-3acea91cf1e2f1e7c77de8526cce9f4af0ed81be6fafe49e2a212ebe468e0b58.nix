{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "regex-tdfa-pipes"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eric.brisco@gmail.com";
      author = "Eric Brisco";
      homepage = "http://github.com/erisco/regex-tdfa-pipes";
      url = "";
      synopsis = "Parse with regular expressions on Producers.";
      description = "Parse with regular expressions on Producers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.regex-tdfa)
          (hsPkgs.regex-base)
          (hsPkgs.pipes)
          (hsPkgs.lens)
          (hsPkgs.array)
          (hsPkgs.monads-tf)
          ];
        };
      };
    }