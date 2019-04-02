{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "record-wrangler"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Matt Parsons";
      maintainer = "parsonsmatt@gmail.com";
      author = "Matt Parsons";
      homepage = "https://github.com/parsonsmatt/record-wrangler#readme";
      url = "";
      synopsis = "Alter your records with ease";
      description = "Please see the README on GitHub at <https://github.com/parsonsmatt/record-wrangler#readme>";
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