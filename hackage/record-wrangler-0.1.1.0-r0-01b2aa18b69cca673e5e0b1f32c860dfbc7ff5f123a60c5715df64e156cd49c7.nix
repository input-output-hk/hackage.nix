{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "record-wrangler"; version = "0.1.1.0"; };
      license = "LicenseRef-Apache";
      copyright = "2019 Matt Parsons, Lumi";
      maintainer = "parsonsmatt@gmail.com";
      author = "Matt Parsons";
      homepage = "https://github.com/lumihq/record-wrangler#readme";
      url = "";
      synopsis = "Alter your records with ease";
      description = "Please see the README on GitHub at <https://github.com/lumihq/record-wrangler#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.template-haskell) ]; };
      tests = {
        "record-wrangler-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.record-wrangler) ];
          };
        };
      };
    }