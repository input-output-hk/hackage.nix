{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { development = false; library = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "ats-format"; version = "0.2.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://hub.darcs.net/vmchale/ats-format#readme";
      url = "";
      synopsis = "A source-code formatter for ATS";
      description = "An opinionated source-code formatter for [ATS](http://www.ats-lang.org/).";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.cli-setup or (pkgs.buildPackages.cli-setup))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.language-ats)
          (hsPkgs.optparse-applicative)
          (hsPkgs.composition-prelude)
          (hsPkgs.htoml-megaparsec)
          (hsPkgs.text)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.directory)
          (hsPkgs.unordered-containers)
          (hsPkgs.process)
          (hsPkgs.file-embed)
          ];
        build-tools = [
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy))
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex))
          ];
        };
      exes = {
        "atsfmt" = { depends = [ (hsPkgs.base) (hsPkgs.ats-format) ]; };
        };
      };
    }