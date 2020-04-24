{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "writer-cps-exceptions"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Daniel Mendler, 2013-2015 Edward Kmett, 2012 Google Inc";
      maintainer = "mail@daniel-mendler.de";
      author = "Daniel Mendler";
      homepage = "https://github.com/minad/writer-cps-exceptions";
      url = "";
      synopsis = "Control.Monad.Catch instances for the stricter CPS WriterT and RWST";
      description = "Control.Monad.Catch instances for the stricter WriterT and RWST from writer-cps-transformers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."writer-cps-transformers" or ((hsPkgs.pkgs-errors).buildDepError "writer-cps-transformers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          ];
        buildable = true;
        };
      };
    }