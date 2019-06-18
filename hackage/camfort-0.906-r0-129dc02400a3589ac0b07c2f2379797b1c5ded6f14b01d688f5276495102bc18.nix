{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "camfort"; version = "0.906"; };
      license = "Apache-2.0";
      copyright = "2012-2019 University of Cambridge";
      maintainer = "Matthew Danish";
      author = "Matthew Danish, Mistral Contrastin, Andrew Rice, Dominic Orchard";
      homepage = "https://camfort.github.io";
      url = "";
      synopsis = "CamFort - Cambridge Fortran infrastructure";
      description = "CamFort is a tool for the analysis, transformation, verification of Fortran code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.GenericPretty)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.fgl)
          (hsPkgs.filepath)
          (hsPkgs.fortran-src)
          (hsPkgs.ghc-prim)
          (hsPkgs.hmatrix)
          (hsPkgs.lattices)
          (hsPkgs.lens)
          (hsPkgs.matrix)
          (hsPkgs.mmorph)
          (hsPkgs.mtl)
          (hsPkgs.parallel)
          (hsPkgs.pretty)
          (hsPkgs.sbv)
          (hsPkgs.singletons)
          (hsPkgs.strict)
          (hsPkgs.syb)
          (hsPkgs.syz)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.uniplate)
          (hsPkgs.vector)
          (hsPkgs.verifiable-expressions)
          (hsPkgs.vinyl)
          (hsPkgs.writer-cps-morph)
          (hsPkgs.writer-cps-mtl)
          (hsPkgs.writer-cps-transformers)
          ];
        libs = [ (pkgs."flint") ];
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex))
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy))
          ];
        };
      exes = {
        "camfort" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.camfort)
            (hsPkgs.directory)
            (hsPkgs.fortran-src)
            (hsPkgs.optparse-applicative)
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.camfort)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.fgl)
            (hsPkgs.filepath)
            (hsPkgs.fortran-src)
            (hsPkgs.hmatrix)
            (hsPkgs.hspec)
            (hsPkgs.lattices)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.sbv)
            (hsPkgs.silently)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.uniplate)
            (hsPkgs.verifiable-expressions)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        };
      };
    }