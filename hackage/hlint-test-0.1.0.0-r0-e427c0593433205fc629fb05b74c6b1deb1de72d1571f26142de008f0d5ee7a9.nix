{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { pedantic = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hlint-test"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017  Tomáš Janoušek, Jan Šipr";
      maintainer = "Jan Šipr <sipr.jan@gmail.com>";
      author = "Tomáš Janoušek <tomi@nomi.cz>, Jan Šipr <sipr.jan@gmail.com>";
      homepage = "https://github.com/Siprj/hlint-test#readme";
      url = "";
      synopsis = "Run hlint in test suite";
      description = "Allows you to write small  hlint test runner; so you will not forget to run hlint before pushing to master.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.hlint) ]; };
      exes = {
        "hlint-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.hlint) (hsPkgs.hlint-test) ];
          };
        };
      };
    }