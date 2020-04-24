{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "log2json"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "harold@hotelling.net";
      author = "harold@hotelling.net";
      homepage = "https://github.com/haroldl/log2json";
      url = "";
      synopsis = "Turn log file records into JSON.";
      description = "Take an httpd.conf style LogFormat string and parse\nlog files into JSON records.";
      buildType = "Simple";
      };
    components = {
      "library" = { buildable = true; };
      exes = {
        "log2json" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
            ];
          buildable = true;
          };
        };
      };
    }