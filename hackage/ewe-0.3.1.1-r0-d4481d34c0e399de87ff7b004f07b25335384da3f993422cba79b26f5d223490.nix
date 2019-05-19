{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "ewe"; version = "0.3.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "fcardona@eafit.edu.co";
      author = "Juan Francisco Cardona McCormick";
      homepage = "http://github.com/jfcmacro/ewe";
      url = "";
      synopsis = "An interpreter for EWE programming language";
      description = "A Haskell implementation of the EWE programming language originally created and developed by Kent D. Lee. EWE is an extension of the RAM programming language. RAM was created by Sethi. This is use for academic purpose only.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.uuagc-cabal or (pkgs.buildPackages.uuagc-cabal))
        (hsPkgs.buildPackages.uulib or (pkgs.buildPackages.uulib))
        (hsPkgs.buildPackages.uuagc or (pkgs.buildPackages.uuagc))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        ];
      };
    components = {
      exes = {
        "ewe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.pretty)
            (hsPkgs.uuagc-cabal)
            ];
          build-tools = [
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex))
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy))
            (hsPkgs.buildPackages.uuagc or (pkgs.buildPackages.uuagc))
            ];
          };
        };
      };
    }