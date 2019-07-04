{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "strip-ansi-escape"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "2019 Yuji Yamamoto";
      maintainer = "whosekiteneverfly@gmail.com";
      author = "Yuji Yamamoto";
      homepage = "https://gitlab.com/igrep/strip-ansi-escape#readme";
      url = "";
      synopsis = "Strip ANSI escape code from string.";
      description = "Strip ANSI escape code from string. Haskell port of https://github.com/chalk/strip-ansi.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.attoparsec) (hsPkgs.text) ];
        };
      tests = {
        "strip-ansi-escape-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.strip-ansi-escape)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.text)
            ];
          };
        };
      };
    }