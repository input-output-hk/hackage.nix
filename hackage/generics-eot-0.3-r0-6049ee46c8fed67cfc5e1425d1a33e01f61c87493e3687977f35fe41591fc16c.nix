{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "generics-eot"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "soenkehahn@gmail.com";
      author = "";
      homepage = "https://github.com/soenkehahn/generics-eot#readme";
      url = "";
      synopsis = "A library for generic programming that aims to be easy to understand";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.markdown-unlit) ];
        build-tools = [
          (hsPkgs.buildPackages.markdown-unlit or (pkgs.buildPackages.markdown-unlit))
          ];
        };
      tests = {
        "quickcheck" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.interpolate)
            (hsPkgs.markdown-unlit)
            (hsPkgs.mockery)
            (hsPkgs.shake)
            ];
          build-tools = [
            (hsPkgs.buildPackages.markdown-unlit or (pkgs.buildPackages.markdown-unlit))
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        "spec" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.hspec)
            (hsPkgs.interpolate)
            (hsPkgs.markdown-unlit)
            ];
          build-tools = [
            (hsPkgs.buildPackages.markdown-unlit or (pkgs.buildPackages.markdown-unlit))
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        };
      };
    }