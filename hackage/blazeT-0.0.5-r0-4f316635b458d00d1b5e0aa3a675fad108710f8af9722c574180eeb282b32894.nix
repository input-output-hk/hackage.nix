{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "blazeT"; version = "0.0.5"; };
      license = "MIT";
      copyright = "";
      maintainer = "Johannes Gerer <oss@johannesgerer.com>";
      author = "Johannes Gerer";
      homepage = "http://johannesgerer.com/blazeT";
      url = "";
      synopsis = "A true monad (transformer) version of the blaze-markup and blaze-html libraries";
      description = "A true monad (transformer) version of the blaze-markup and blaze-html libraries, implemented as as a very thin wrapper around and strict superset of these libraries.\n\nSee <https://github.com/johannesgerer/blazeT Readme> on Github.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.blaze-markup)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-builder)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          ];
        };
      };
    }