{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "ghc-core-html"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "https://github.com/vincenthz/ghc-core-html";
      url = "";
      synopsis = "Core to HTML display";
      description = "Display GHC core using a friendly colored, clickable and dynamic html output";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ghc-core-html" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.parsec)
            (hsPkgs.blaze-html)
            (hsPkgs.process)
            ];
          };
        };
      };
    }