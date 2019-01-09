{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "unitym-servant"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Brian Hurt";
      maintainer = "bhurt42@gmail.com";
      author = "Brian Hurt";
      homepage = "https://github.com/bhurt/unitym#readme";
      url = "";
      synopsis = "Implementaation of unitym for Servant servers";
      description = "Implementaation of unitym for Servant servers";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.servant-server)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unitym)
          ];
        };
      };
    }