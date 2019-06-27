{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hsemail"; version = "2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons,\nAli Abrar,\nGero Kriependorf,\nMarty Pauley";
      homepage = "https://github.com/peti/hsemail#readme";
      url = "";
      synopsis = "Parsec parsers for the Internet Message format (e-mail)";
      description = "Parsec parsers for the Internet Message format defined in RFC2822.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.time)
          (hsPkgs.time-compat)
          ];
        };
      tests = {
        "test-hsemail" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hsemail)
            (hsPkgs.hspec)
            (hsPkgs.parsec)
            (hsPkgs.time)
            ];
          };
        };
      };
    }