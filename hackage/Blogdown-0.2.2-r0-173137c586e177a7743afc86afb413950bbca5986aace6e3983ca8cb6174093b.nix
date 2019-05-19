{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Blogdown"; version = "0.2.2"; };
      license = "AGPL-3.0-only";
      copyright = "(c) 2017 Alex Becker";
      maintainer = "acbecker@uchicago.edu";
      author = "Alex Becker";
      homepage = "https://blogdown.io";
      url = "";
      synopsis = "A markdown-like markup language designed for blog posts";
      description = "A library and executable that implement a modified, extended version of Markdown designed for writing blog posts.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.MissingH or (pkgs.buildPackages.MissingH))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.containers)
          (hsPkgs.MissingH)
          (hsPkgs.network-uri)
          ];
        };
      exes = {
        "Blogdown" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.MissingH)
            (hsPkgs.network-uri)
            ];
          };
        };
      tests = {
        "Test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.MissingH)
            (hsPkgs.network-uri)
            ];
          };
        };
      benchmarks = {
        "Benchmark" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.MissingH)
            (hsPkgs.criterion)
            (hsPkgs.network-uri)
            ];
          };
        };
      };
    }