{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "include-file"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dhelta.diaz@gmail.com";
      author = "Daniel Díaz";
      homepage = "";
      url = "";
      synopsis = "Inclusion of files in executables at compile-time.";
      description = "Inclusion of files in source code via Template Haskell.\n\nWhen distributing executables, sometimes it is required\nto attach some other resources in files. Using this library\n(together with the TemplateHaskell extension) you avoid this\nproblem by including those files inside the executable at\ncompile time.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.bytestring or (pkgs.buildPackages.bytestring))
        (hsPkgs.buildPackages.random or (pkgs.buildPackages.random))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.template-haskell)
          (hsPkgs.random)
          ];
        };
      tests = {
        "include-file-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.include-file) (hsPkgs.bytestring) ];
          };
        };
      benchmarks = {
        "include-file-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.include-file)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            ];
          };
        };
      };
    }