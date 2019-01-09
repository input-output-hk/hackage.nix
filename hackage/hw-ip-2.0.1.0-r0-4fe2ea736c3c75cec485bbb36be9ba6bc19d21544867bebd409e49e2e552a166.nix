{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "hw-ip"; version = "2.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 John Ky, David Turnbull, Jian Wan";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky,\nDavid Turnbull,\nJian Wan";
      homepage = "https://github.com/haskell-works/hw-ip#readme";
      url = "";
      synopsis = "Library for manipulating IP addresses and CIDR blocks";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.appar)
          (hsPkgs.containers)
          (hsPkgs.generic-lens)
          (hsPkgs.hw-bits)
          (hsPkgs.iproute)
          (hsPkgs.text)
          ];
        };
      tests = {
        "hw-ip-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.appar)
            (hsPkgs.generic-lens)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.hw-bits)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.hw-ip)
            (hsPkgs.text)
            ];
          };
        };
      };
    }