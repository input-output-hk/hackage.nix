{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hit"; version = "0.7.0"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "https://github.com/vincenthz/hit";
      url = "";
      synopsis = "Git like program in haskell";
      description = "\nSmall haskell executable usable example using the git library\n\nLibrary component is available at 'git'\n";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Hit" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.hashtables)
            (hsPkgs.bytestring)
            (hsPkgs.hourglass)
            (hsPkgs.git)
            ];
          };
        };
      };
    }