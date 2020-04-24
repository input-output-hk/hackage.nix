{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "readcsv"; version = "0.1.1"; };
      license = "MIT";
      copyright = "2017 George Steel";
      maintainer = "george.steel@gmail.com";
      author = "George Steel";
      homepage = "https://github.com/george-steel/readcsv";
      url = "";
      synopsis = "Lightweight CSV parser/emitter based on ReadP";
      description = "Parses and emits tables of strings formatted according to RFC 4180,\n/\"The common Format and MIME Type for Comma-Separated Values (CSV) Files\"/.\nHas no dependencies on parsec or any libraries other than base.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }