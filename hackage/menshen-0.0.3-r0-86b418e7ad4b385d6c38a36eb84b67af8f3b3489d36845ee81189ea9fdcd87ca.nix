{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "menshen"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) Daniel YU";
      maintainer = "leptonyu@gmail.com";
      author = "Daniel YU";
      homepage = "https://github.com/leptonyu/menshen#readme";
      url = "";
      synopsis = "Data Validation";
      description = "Data Validation inspired by JSR305";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.regex-tdfa)
          (hsPkgs.scientific)
          (hsPkgs.text)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.menshen)
            (hsPkgs.regex-tdfa)
            (hsPkgs.scientific)
            (hsPkgs.text)
            ];
          };
        };
      };
    }