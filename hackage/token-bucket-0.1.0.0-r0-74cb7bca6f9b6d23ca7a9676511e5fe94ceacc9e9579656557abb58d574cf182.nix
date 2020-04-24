{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { use-cbits = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "token-bucket"; version = "0.1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "hvr@gnu.org";
      author = "Herbert Valerio Riedel";
      homepage = "https://github.com/hvr/token-bucket";
      url = "";
      synopsis = "Rate limiter using lazy bucket algorithm";
      description = "This implementation is heavily inspired by the one described in\n<http://ksdlck.com/post/17418037348/rate-limiting-at-webscale-lazy-leaky-buckets \"Rate Limiting at Webscale: Lazy Leaky Buckets\">";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ] ++ (pkgs.lib).optional (!flags.use-cbits) (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"));
        buildable = true;
        };
      tests = {
        "test-tb" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."token-bucket" or ((hsPkgs.pkgs-errors).buildDepError "token-bucket"))
            ];
          buildable = true;
          };
        };
      };
    }