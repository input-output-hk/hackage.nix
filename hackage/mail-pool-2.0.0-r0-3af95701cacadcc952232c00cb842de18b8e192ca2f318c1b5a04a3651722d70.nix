{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mail-pool"; version = "2.0.0"; };
      license = "MIT";
      copyright = "2019 Jappie Klooster";
      maintainer = "jappieklooster@hotmail.com";
      author = "Jappie Klooster";
      homepage = "https://github.com/jappeace/email-pool#readme";
      url = "";
      synopsis = "Preconfigured email connection pool on top of smtp.";
      description = "Email helper functions with some sane defaults such as a resource pool and cli support";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.HaskellNet)
          (hsPkgs.HaskellNet-SSL)
          (hsPkgs.base)
          (hsPkgs.microlens)
          (hsPkgs.mime-mail)
          (hsPkgs.network)
          (hsPkgs.optparse-applicative)
          (hsPkgs.resource-pool)
          (hsPkgs.time)
          ];
        };
      exes = {
        "exe" = {
          depends = [
            (hsPkgs.HaskellNet)
            (hsPkgs.HaskellNet-SSL)
            (hsPkgs.base)
            (hsPkgs.mail-pool)
            (hsPkgs.microlens)
            (hsPkgs.mime-mail)
            (hsPkgs.network)
            (hsPkgs.optparse-applicative)
            (hsPkgs.resource-pool)
            (hsPkgs.time)
            ];
          };
        };
      };
    }