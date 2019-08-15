{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "hw-ip"; version = "2.3.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 John Ky, David Turnbull, Jian Wan";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky,\nDavid Turnbull,\nJian Wan";
      homepage = "https://github.com/haskell-works/hw-ip#readme";
      url = "";
      synopsis = "Library for manipulating IP addresses and CIDR blocks";
      description = "Library for manipulating IP addresses and CIDR blocks. Please see README.md";
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
      exes = {
        "hw-ip" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.appar)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.generic-lens)
            (hsPkgs.lens)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            (hsPkgs.hw-ip)
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs.semigroups);
          };
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
            (hsPkgs.text)
            (hsPkgs.hw-ip)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        };
      };
    }