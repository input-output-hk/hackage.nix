{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { development = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "fast-arithmetic"; version = "0.1.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/fast-arithmetic#readme";
      url = "";
      synopsis = "Fast number-theoretic functions.";
      description = "Fast number-theoretic code with a high level of safety guaranteed by ATS.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.http-client or (pkgs.buildPackages.http-client))
        (hsPkgs.buildPackages.http-client-tls or (pkgs.buildPackages.http-client-tls))
        (hsPkgs.buildPackages.tar or (pkgs.buildPackages.tar))
        (hsPkgs.buildPackages.zlib or (pkgs.buildPackages.zlib))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory))
        (hsPkgs.buildPackages.parallel-io or (pkgs.buildPackages.parallel-io))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.composition-prelude)
          (hsPkgs.recursion-schemes)
          ];
        };
      tests = {
        "fast-arithmetic-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.fast-arithmetic) (hsPkgs.hspec) ];
          };
        };
      benchmarks = {
        "fast-arithmetic-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.fast-arithmetic)
            (hsPkgs.criterion)
            ];
          };
        };
      };
    }