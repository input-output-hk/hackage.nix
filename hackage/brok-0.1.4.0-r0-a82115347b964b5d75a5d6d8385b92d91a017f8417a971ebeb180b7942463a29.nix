{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "brok"; version = "0.1.4.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Small Hadron Collider";
      maintainer = "mark@smallhadroncollider.com";
      author = "Small Hadron Collider";
      homepage = "https://github.com/smallhadroncollider/brok#readme";
      url = "";
      synopsis = "Finds broken links in text files";
      description = "Please see the README on GitHub at <https://github.com/smallhadroncollider/brok#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.ansi-terminal)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.classy-prelude)
          (hsPkgs.directory)
          (hsPkgs.file-embed)
          (hsPkgs.http-client)
          (hsPkgs.http-conduit)
          (hsPkgs.text)
          (hsPkgs.time)
          ];
        };
      exes = {
        "brok" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brok)
            (hsPkgs.classy-prelude)
            (hsPkgs.file-embed)
            ];
          };
        };
      tests = {
        "brok-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.brok)
            (hsPkgs.classy-prelude)
            (hsPkgs.file-embed)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-expected-failure)
            (hsPkgs.tasty-hunit)
            ];
          };
        };
      };
    }