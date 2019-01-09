{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "flip-cmd"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "aiya000";
      maintainer = "aiya000 <aiya000.develop@gmail.com>";
      author = "aiya000";
      homepage = "https://github.com/aiya000/hs-flip-cmd";
      url = "";
      synopsis = "e.g. `flip systemctl foo.service start` does `systemctl start foo.service`";
      description = "Haskell's flip function in our CLI";
      buildType = "Simple";
      };
    components = {
      exes = {
        "flip" = {
          depends = [ (hsPkgs.base) (hsPkgs.process) (hsPkgs.safe-exceptions) ];
          };
        };
      };
    }