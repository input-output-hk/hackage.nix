{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "misfortune"; version = "0.1.1.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "https://github.com/mokus0/misfortune";
      url = "";
      synopsis = "fortune-mod clone";
      description = "fortune-mod clone, in library and executable form.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.knob)
          (hsPkgs.random-fu)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "misfortune" = {
          depends = [
            (hsPkgs.monad-loops)
            (hsPkgs.regex-base)
            (hsPkgs.regex-pcre)
            ];
          };
        "misfortune-strfile" = {};
        };
      };
    }