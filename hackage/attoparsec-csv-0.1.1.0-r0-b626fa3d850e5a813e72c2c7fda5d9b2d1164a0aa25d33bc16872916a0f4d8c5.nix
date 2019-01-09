{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "attoparsec-csv"; version = "0.1.1.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "Robin Bate Boerop <me@robinbb.com>";
      author = "Robin Bate Boerop <me@robinbb.com>";
      homepage = "https://github.com/robinbb/attoparsec-csv";
      url = "";
      synopsis = "A parser for CSV files that uses Attoparsec";
      description = "An APLv2-licensed Attoparsec-based parser library for\ncomma-separated values (CSV) files.\n(http://www.ietf.org/rfc/rfc4180.txt)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.text) (hsPkgs.attoparsec) ];
        };
      };
    }