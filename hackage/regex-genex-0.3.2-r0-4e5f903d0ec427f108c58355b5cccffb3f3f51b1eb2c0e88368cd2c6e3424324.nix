{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "regex-genex"; version = "0.3.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "2011 Audrey Tang";
      maintainer = "Audrey Tang <audreyt@audreyt.org>";
      author = "Audrey Tang <audreyt@audreyt.org>";
      homepage = "https://github.com/audreyt/regex-genex";
      url = "";
      synopsis = "From a regex, generate all possible strings it can match";
      description = "From a regex, generate all possible strings it can match";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.sbv)
          (hsPkgs.regex-tdfa)
          (hsPkgs.stream-monad)
          (hsPkgs.text)
          (hsPkgs.logict)
          ];
        };
      exes = {
        "genex" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.sbv)
            (hsPkgs.regex-tdfa)
            ];
          };
        };
      };
    }