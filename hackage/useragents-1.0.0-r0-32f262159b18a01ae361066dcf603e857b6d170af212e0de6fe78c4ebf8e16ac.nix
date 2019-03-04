{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "useragents"; version = "1.0.0"; };
      license = "MIT";
      copyright = "2019 Jappie Klooster";
      maintainer = "jappieklooster@hotmail.com";
      author = "Jappie Klooster";
      homepage = "https://github.com/jappeace/useragents#readme";
      url = "";
      synopsis = "A collection of user agents";
      description = "A collection of user agents, easily select a random one.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.random-fu) (hsPkgs.text) ];
        };
      exes = {
        "random-user-agent" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.random-fu)
            (hsPkgs.text)
            (hsPkgs.useragents)
            ];
          };
        };
      };
    }