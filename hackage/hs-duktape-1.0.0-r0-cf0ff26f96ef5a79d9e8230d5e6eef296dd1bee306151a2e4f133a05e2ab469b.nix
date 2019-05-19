{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hs-duktape"; version = "1.0.0"; };
      license = "MIT";
      copyright = "2015-2019 Greg V <greg@unrelenting.technology> / 2013-2019 Duktape authors (for Duktape)";
      maintainer = "greg@unrelenting.technology";
      author = "Greg V";
      homepage = "https://github.com/myfreeweb/hs-duktape";
      url = "";
      synopsis = "Haskell bindings for a very compact embedded ECMAScript (JavaScript) engine.";
      description = "";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory))
        (hsPkgs.buildPackages.process or (pkgs.buildPackages.process))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations-pretty-diff)
            (hsPkgs.aeson)
            (hsPkgs.aeson-qq)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.template-haskell)
            (hsPkgs.hs-duktape)
            (hsPkgs.time)
            ];
          };
        };
      };
    }