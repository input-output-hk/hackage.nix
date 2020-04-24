{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "writer-cps-lens"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Louis Pan";
      maintainer = "louis@pan.me";
      author = "Louis Pan, Edward A. Kmett";
      homepage = "https://github.com/louispan/writer-cps-lens#readme";
      url = "";
      synopsis = "Lens instances for the stricter CPS WriterT and RWST";
      description = "Control.Lens Strict, Wrapped, Magnify and Zoomed instances for the stricter WriterT and RWST from writer-cps-transformers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."writer-cps-transformers" or ((hsPkgs.pkgs-errors).buildDepError "writer-cps-transformers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          (hsPkgs."writer-cps-mtl" or ((hsPkgs.pkgs-errors).buildDepError "writer-cps-mtl"))
          ];
        buildable = true;
        };
      };
    }