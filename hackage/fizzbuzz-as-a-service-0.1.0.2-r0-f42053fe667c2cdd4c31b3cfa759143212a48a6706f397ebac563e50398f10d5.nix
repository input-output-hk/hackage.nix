{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "fizzbuzz-as-a-service"; version = "0.1.0.2"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/fizzbuzz-as-a-service";
      url = "";
      synopsis = "FizzBuzz as a service.";
      description = "FizzBuzz as a service.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "fizzbuzz-server" = {
          depends = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.network-simple)
            (hsPkgs.optparse-applicative)
            ];
          };
        };
      };
    }